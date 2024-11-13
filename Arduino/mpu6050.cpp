#include "Arduino.h"
#include "config.h"

// imu global data
float angle_x_raw;
float angle_x = 0;
float angle_y = 0;
float gyro_rate_x;
float gyro_rate_y;
float gyro_rate_z;
float acc_angle_x;
float acc_angle_y;

// imu object
MPU6050 car_imu(Wire);
kalman_filter MPU6050_kalman(0.001, 0.005, 0.5, 1);

void car_imu_init() {
  Wire.begin(mpu6050_sda_pin, mpu6050_scl_pin, 400000);  //sda:4, scl:5
  car_imu.begin();
  // car_imu.setGyroOffsets(-3.68, 1.22, 0.16);
  car_imu.calcGyroOffsets(true);
  imu_fetch_timer = millis();
}

void car_imu_update_interval() {
  unsigned long current_time = millis();
  imu_fetch_interval = (current_time - imu_fetch_timer) / 1000.0;
  imu_fetch_interval = imu_fetch_interval == 0 ? 0.001 : imu_fetch_interval;
  imu_fetch_timer = current_time;
}

void car_imu_compute_angles() {
  car_imu.update();
  // caculate angle from acc meter
  acc_angle_x = atan(car_imu.getAccY() / sqrt(pow(car_imu.getAccX(), 2) + pow(car_imu.getAccZ(), 2))) * 180 / PI;
  acc_angle_y = atan(-car_imu.getAccX() / sqrt(pow(car_imu.getAccY(), 2) + pow(car_imu.getAccZ(), 2))) * 180 / PI;

  // get angular velocity from gyro
  gyro_rate_x = car_imu.getGyroX();
  gyro_rate_y = car_imu.getGyroY();
  gyro_rate_z = car_imu.getGyroZ();

  // kalman filter
  angle_x = MPU6050_kalman.get_angle(acc_angle_x, gyro_rate_x, imu_fetch_interval);
}