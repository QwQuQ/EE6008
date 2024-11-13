#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>

#define SERVICE_UUID "91bad492-b950-4226-aa2b-4ede9fa42f59"  // 自定义服务UUID
#define CHARACTERISTIC_UUID "cba1d466-344c-4be3-ab3f-189f80dd7518"  // 自定义特征UUID

BLECharacteristic *pCharacteristic;
bool deviceConnected = false;
String receivedValue = "";

// 处理BLE连接和断开的回调
class MyServerCallbacks : public BLEServerCallbacks {
  void onConnect(BLEServer* pServer) {
    deviceConnected = true;
    Serial.println("手机已连接");
  }

  void onDisconnect(BLEServer* pServer) {
    deviceConnected = false;
    Serial.println("手机已断开连接");
  }
};

// 处理特征读写的回调
class MyCallbacks : public BLECharacteristicCallbacks {
  void onWrite(BLECharacteristic *pCharacteristic) {
    receivedValue = pCharacteristic->getValue();
    if (receivedValue.length() > 0) {
      Serial.println("从手机收到数据: " + receivedValue);
      // 根据不同的情况处理数据
    if (receivedValue == "a") {
      // 处理情况a
      Serial.println("处理左转");
      // 在这里执行情况A的代码
    }
    else if (receivedValue == "b") {
      // 处理情况b
      Serial.println("处理右转");
      // 在这里执行情况B的代码
    }
    else if (receivedValue == "c") {
      // 处理情况c
      Serial.println("处理前进");
      // 在这里执行情况C的代码
    }
    else if (receivedValue == "d") {
      // 处理情况d
      Serial.println("处理后退");
      // 在这里执行情况D的代码
    }
    else if (receivedValue == "e") {
      // 处理情况e
      Serial.println("处理停止");
      // 在这里执行情况e的代码
    }
    else {
      // 如果收到的数据不匹配a、b、c或d
      Serial.println("收到的指令无法识别");
    }

    // 重置receivedValue，准备接收下一个数据
    receivedValue = "";
    }
  }
};

void setup() {
  Serial.begin(115200);  // 初始化串口监视器

  // 初始化BLE设备
  BLEDevice::init("ESP32_BLE");

  // 创建BLE服务器
  BLEServer *pServer = BLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());

  // 创建服务
  BLEService *pService = pServer->createService(SERVICE_UUID);

  // 创建特征
  pCharacteristic = pService->createCharacteristic(
                      CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ |
                      BLECharacteristic::PROPERTY_WRITE
                    );

  pCharacteristic->setCallbacks(new MyCallbacks());

  // 启动服务
  pService->start();

  // 开始广告
  pServer->getAdvertising()->start();
  Serial.println("等待手机连接...");
}

void loop() {
  // 其他逻辑代码可以放在这里
  delay(1000);
}
