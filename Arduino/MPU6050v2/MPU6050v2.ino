#include <MPU6050_tockn.h>
#include <Wire.h>
#include <EEPROM.h>

// 卡尔曼滤波器类
class Kalman {
  public:
    Kalman(float processNoise, float measurementNoise, float estimationError) {
      this->processNoise = processNoise;
      this->measurementNoise = measurementNoise;
      this->estimationError = estimationError;
      this->angle = 0;
      this->bias = 0;
      this->rate = 0;
      this->P[0] = 1;
      this->P[1] = 0;
      this->P[2] = 0;
      this->P[3] = 1;
    }

    float getAngle(float newRate, float newAngle, float dt) {
      // Prediction
      this->rate = newRate - this->bias;
      this->angle += dt * this->rate;

      // Update
      this->P[0] += dt * (dt * this->P[3] - this->P[1] - this->P[2] + this->processNoise);
      this->P[1] -= dt * this->P[3];
      this->P[2] -= dt * this->P[3];
      this->P[3] += this->processNoise * dt;

      float S = this->P[0] + this->measurementNoise;
      float K[2];
      K[0] = this->P[0] / S;
      K[1] = this->P[2] / S;

      float y = newAngle - this->angle;
      this->angle += K[0] * y;
      this->bias += K[1] * y;

      float P00_temp = this->P[0];
      float P01_temp = this->P[1];

      this->P[0] -= K[0] * P00_temp;
      this->P[1] -= K[0] * P01_temp;
      this->P[2] -= K[1] * P00_temp;
      this->P[3] -= K[1] * P01_temp;

      return this->angle;
    }

  private:
    float processNoise;
    float measurementNoise;
    float estimationError;
    float angle;
    float bias;
    float rate;
    float P[4];
};

MPU6050 mpu6050(Wire);

// 存储偏移值的 EEPROM 地址
int eepromAddress = 0;


// 用于姿态解算的全局变量
Kalman kalmanX(0.001, 0.003, 0.03); // 卡尔曼滤波系数，参数需根据实际情况调整
Kalman kalmanY(0.001, 0.003, 0.03);
float angleX = 0, angleY = 0;
float gyroXrate, gyroYrate;
float accAngleX, accAngleY;
float alpha = 0.98; // 互补滤波的权重系数，调节角速度和加速度的权重
unsigned long timer = 0;
float dt = 0; // 时间差

//测试MPU6050输出
void testMPU6050output(){
   if(millis() - timer > 1000){
    Serial.println("=======================================================");
    Serial.print("temp : ");Serial.println(mpu6050.getTemp());
    Serial.print("accX : ");Serial.print(mpu6050.getAccX());
    Serial.print("\taccY : ");Serial.print(mpu6050.getAccY());
    Serial.print("\taccZ : ");Serial.println(mpu6050.getAccZ());
    Serial.print("gyroX : ");Serial.print(mpu6050.getGyroX());
    Serial.print("\tgyroY : ");Serial.print(mpu6050.getGyroY());
    Serial.print("\tgyroZ : ");Serial.println(mpu6050.getGyroZ());
    Serial.println("=======================================================\n");
    timer = millis();
    }
}

// 初始化 MPU6050
void initializeMPU() {
  Wire.begin(4,5,400000); //sda:4, scl:5
  mpu6050.begin();
  if (EEPROM.read(eepromAddress) != 255) {
    Serial.println("Loading offsets from EEPROM...");
    loadOffsetsFromEEPROM(); // 从 EEPROM 读取偏移值
  } else {
    Serial.println("Calibrating MPU6050...");
    calibrateMPU();
    saveOffsetsToEEPROM(); // 保存偏移值到 EEPROM
  }
}

// 校准 MPU6050
void calibrateMPU() {
  mpu6050.calcGyroOffsets(true);  // 校准 MPU6050 陀螺仪偏移
}

// 保存偏移值到 EEPROM
void saveOffsetsToEEPROM() {
  EEPROM.put(eepromAddress, mpu6050.getGyroXoffset());
  EEPROM.put(eepromAddress + sizeof(int16_t), mpu6050.getGyroYoffset());
  EEPROM.put(eepromAddress + 2 * sizeof(int16_t), mpu6050.getGyroZoffset());
  EEPROM.commit();  // 保存到 EEPROM (ESP32 必须调用 commit)
  Serial.println("Offsets saved to EEPROM.");
}

// 从 EEPROM 读取偏移值
void loadOffsetsFromEEPROM() {
  int16_t gyroXoffset, gyroYoffset, gyroZoffset;
  EEPROM.get(eepromAddress, gyroXoffset);
  EEPROM.get(eepromAddress + sizeof(int16_t), gyroYoffset);
  EEPROM.get(eepromAddress + 2 * sizeof(int16_t), gyroZoffset);
  mpu6050.setGyroOffsets(gyroXoffset , gyroYoffset, gyroZoffset);
  // mpu6050.setGyroXoffset(gyroXoffset);
  // mpu6050.setGyroYoffset(gyroYoffset);
  // mpu6050.setGyroZoffset(gyroZoffset);
  Serial.println("Offsets loaded from EEPROM.");
}


// 更新时间差 dt
void updateDeltaTime() {
  unsigned long currentTime = millis();
  dt = (currentTime - timer) / 1000.0; // 时间差转换为秒
  timer = currentTime;
}

// 获取姿态角度（使用互补滤波）
void computeAngles() {
  mpu6050.update();

  // 计算加速度计的角度
  accAngleX = atan(mpu6050.getAccY() / sqrt(pow(mpu6050.getAccX(), 2) + pow(mpu6050.getAccZ(), 2))) * 180 / PI;
  accAngleY = atan(-mpu6050.getAccX() / sqrt(pow(mpu6050.getAccY(), 2) + pow(mpu6050.getAccZ(), 2))) * 180 / PI;

  // 获取陀螺仪的角速度
  gyroXrate = mpu6050.getGyroX();
  gyroYrate = mpu6050.getGyroY();

  /*
  // 互补滤波计算角度
  angleX = alpha * (angleX + gyroXrate * dt) + (1 - alpha) * accAngleX;
  angleY = alpha * (angleY + gyroYrate * dt) + (1 - alpha) * accAngleY;*/

  // 使用卡尔曼滤波计算角度
  angleX = kalmanX.getAngle(gyroXrate, accAngleX, dt);
  angleY = kalmanY.getAngle(gyroYrate, accAngleY, dt);
}

// 返回X轴的角度
float getAngleX() {
  return angleX;
}

// 返回Y轴的角度
float getAngleY() {
  return angleY;
}

void setup() {
  Serial.begin(9600);
  EEPROM.begin(512);  // 初始化 EEPROM（ESP32 使用时必须）
  initializeMPU();    // 初始化 MPU6050 并加载偏移值
  timer = millis(); // 初始化计时器
}

void loop() {
  updateDeltaTime(); // 更新时间差
  computeAngles();   // 计算姿态角度

  // 输出姿态角度（用于调试）
  Serial.print("Angle X: "); Serial.println(getAngleX());
  // Serial.print("Angle Y: "); Serial.println(getAngleY());

  delay(10);
}
