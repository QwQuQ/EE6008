#include "config.h"

void setup() {
  // serial initialization
  Serial.begin(115200);

  // motor control gpio initialization
  motor_l_gpio_init();
  motor_r_gpio_init();
  motor_l_set_pwm(0);
  motor_r_set_pwm(0);

  // decoder callback function registration
  attachInterrupt(digitalPinToInterrupt(motor_l_encoder_pin_1), motor_l_encoder_isr, RISING);
  attachInterrupt(digitalPinToInterrupt(motor_r_encoder_pin_1), motor_r_encoder_isr, RISING);

  oled_display_init();

  // ble initialization
  ble_service_init();

  // imu initialization
  car_imu_init();
  system_run = false;

  radar_init();

  xTaskCreatePinnedToCore(balance_control, "balance_control", 2048, NULL, 1, NULL, 1);
  xTaskCreatePinnedToCore(oled_monitor, "oled_monitor", 2048, NULL, 3, NULL, 0);
  xTaskCreatePinnedToCore(radar_get_distance, "radar_get_distance", 2048, NULL, 2, NULL, 0);
  
  // motor_l_set_pwm(30);
  // motor_r_set_pwm(30);
}

void loop() {
  delay(100);
}
