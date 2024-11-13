#ifndef __BLE__
#define __BLE__

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>

#define SERVICE_UUID "91bad492-b950-4226-aa2b-4ede9fa42f59"  //BLE Service UUID
#define CHARACTERISTIC_UUID "cba1d466-344c-4be3-ab3f-189f80dd7518"  //BLE Characteristic UUID

extern BLECharacteristic *pCharacteristic;
extern bool deviceConnected;
extern String receivedValue;

// 处理BLE连接和断开的回调
class MyServerCallbacks : public BLEServerCallbacks {
  void onConnect(BLEServer* pServer);
  void onDisconnect(BLEServer* pServer);
};

// 处理特征读写的回调
class MyCallbacks : public BLECharacteristicCallbacks {
  void onWrite(BLECharacteristic *pCharacteristic);
};

void ble_service_init();

#endif