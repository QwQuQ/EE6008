#include "config.h"

BLECharacteristic* pCharacteristic;
bool deviceConnected = false;
String receivedValue = "";

// 处理BLE连接和断开的回调
void MyServerCallbacks::onConnect(BLEServer* pServer) {
  deviceConnected = true;
}

void MyServerCallbacks::onDisconnect(BLEServer* pServer) {
  deviceConnected = false;
}

// 处理特征读写的回调
void MyCallbacks::onWrite(BLECharacteristic* pCharacteristic) {
  receivedValue = pCharacteristic->getValue();
  if (receivedValue.length() > 0) {
    Serial.println("从手机收到数据: " + receivedValue);
    // 根据不同的情况处理数据
    if (receivedValue == "a") {
      // 处理左转
      motor_encoder_r_cnt += 100;
      motor_encoder_r_cnt_prev += 100;
      motor_encoder_l_cnt -= 100;
      motor_encoder_l_cnt_prev -= 100;
    } else if (receivedValue == "b") {
      // 处理右转
      motor_encoder_r_cnt -= 100;
      motor_encoder_r_cnt_prev -= 100;
      motor_encoder_l_cnt += 100;
      motor_encoder_l_cnt_prev += 100;
    } else if (receivedValue == "c") {
      // 处理前进
      motor_encoder_r_cnt += 100;
      motor_encoder_r_cnt_prev += 100;
      motor_encoder_l_cnt += 100;
      motor_encoder_l_cnt_prev += 100;
    } else if (receivedValue == "d") {
      // 处理后退
      motor_encoder_r_cnt -= 100;
      motor_encoder_r_cnt_prev -= 100;
      motor_encoder_l_cnt -= 100;
      motor_encoder_l_cnt_prev -= 100;
    } else if (receivedValue == "e") {
      // 处理停止
      motor_encoder_r_cnt = 0;
      motor_encoder_r_cnt_prev = 0;
      motor_encoder_l_cnt = 0;
      motor_encoder_l_cnt_prev = 0;
    } else {
      Serial.println("收到的指令无法识别");
    }
    receivedValue = "";
  }
}

void ble_service_init() {
  // BLE device initialization
  BLEDevice::init("ESP32_BLE");
  // create BLE server
  BLEServer* pServer = BLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());
  // create service
  BLEService* pService = pServer->createService(SERVICE_UUID);
  // create characterictic
  pCharacteristic = pService->createCharacteristic(
    CHARACTERISTIC_UUID,
    BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE);
  pCharacteristic->setCallbacks(new MyCallbacks());
  // start service
  pService->start();
  // start advertising
  pServer->getAdvertising()->start();
  Serial.println("等待手机连接...");
}
