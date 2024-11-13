#include "esp32-hal.h"
#include "Arduino.h"
#include "config.h"

int left_motor_pwm;
int right_motor_pwm;

float vertical_ctrl;
float velocity_ctrl;
float turn_ctrl;

// timer settings
unsigned long imu_fetch_timer = 0;
float imu_fetch_interval = 0;

bool system_run = false;

// debug serial log
void serial_print_log();

void balance_control(void *pvParameters) {
  while (1) {
    if (system_run) {
      car_imu_update_interval();
      car_imu_compute_angles();
      if (angle_x >= 50 || angle_x <= -50) {
        system_run = false;
      }

      motor_l_speed = (motor_encoder_l_cnt - motor_encoder_l_cnt_prev), motor_encoder_l_cnt_prev = motor_encoder_l_cnt;
      motor_r_speed = (motor_encoder_r_cnt - motor_encoder_r_cnt_prev), motor_encoder_r_cnt_prev = motor_encoder_r_cnt;

      if (radar_echo_recv_time_stamp - radar_echo_trig_time_stamp < 3 && radar_echo_recv_time_stamp - radar_echo_trig_time_stamp > 0 && radar_echo == true) {
        motor_encoder_r_cnt -= 2;
        motor_encoder_r_cnt_prev -= 2;
        motor_encoder_l_cnt -= 2;
        motor_encoder_l_cnt_prev -= 2;
      }

      motor_l_speed_filter = float(float(motor_l_speed) * 0.05 + motor_l_speed_filter * 0.95);
      motor_r_speed_filter = float(float(motor_r_speed) * 0.05 + motor_r_speed_filter * 0.95);

      vertical_ctrl = vertical_control();
      velocity_ctrl = velocity_control(0, motor_l_speed_filter + motor_r_speed_filter, motor_encoder_l_cnt + motor_encoder_r_cnt);
      turn_ctrl = turn_control(motor_encoder_l_cnt, motor_encoder_r_cnt);

      if (velocity_ctrl > 250 || velocity_ctrl < -250) {
        system_run = false;
      }

      left_motor_pwm = vertical_ctrl - velocity_ctrl + turn_ctrl;
      right_motor_pwm = vertical_ctrl - velocity_ctrl - turn_ctrl;
      motor_l_set_pwm(left_motor_pwm);
      motor_r_set_pwm(right_motor_pwm);

      serial_print_log();
    } else {
      motor_l_set_pwm(0);
      motor_r_set_pwm(0);
      motor_encoder_l_cnt = 0;
      motor_encoder_l_cnt_prev = 0;
      motor_encoder_r_cnt = 0;
      motor_encoder_r_cnt_prev = 0;
      vertical_ctrl = 0;
      velocity_ctrl = 0;
      motor_l_speed = 0;
      motor_r_speed = 0;
      motor_l_speed_filter = 0;
      motor_r_speed_filter = 0;
      do {
        car_imu_update_interval();
        car_imu_compute_angles();

        serial_print_log();

        motor_encoder_l_cnt = 0;
        motor_encoder_l_cnt_prev = 0;
        motor_encoder_r_cnt = 0;
        motor_encoder_r_cnt_prev = 0;
        vertical_ctrl = 0;
        velocity_ctrl = 0;
        motor_l_speed = 0;
        motor_r_speed = 0;
        motor_l_speed_filter = 0;
        motor_r_speed_filter = 0;

        vTaskDelay(10 / portTICK_PERIOD_MS);
      } while (angle_x <= 3 && angle_x >= -3);
      do {
        car_imu_update_interval();
        car_imu_compute_angles();

        serial_print_log();

        vTaskDelay(10 / portTICK_PERIOD_MS);

        motor_encoder_l_cnt = 0;
        motor_encoder_l_cnt_prev = 0;
        motor_encoder_r_cnt = 0;
        motor_encoder_r_cnt_prev = 0;
        vertical_ctrl = 0;
        velocity_ctrl = 0;
        motor_l_speed = 0;
        motor_r_speed = 0;
        motor_l_speed_filter = 0;
        motor_r_speed_filter = 0;

      } while (angle_x >= 3 || angle_x <= -3);
      system_run = true;
    }
    vTaskDelay(10 / portTICK_PERIOD_MS);
  }
}

void oled_monitor(void *pvParameters) {
  while (1) {
    oled_display.clearDisplay();
    oled_display.setTextColor(WHITE);
    oled_display.setCursor(1, 1);
    oled_display.setTextSize(1);

    oled_display.print("int:");
    oled_display.println(imu_fetch_interval);

    oled_display.print("L:");
    oled_display.println(motor_encoder_l_cnt);

    oled_display.print("Phone:");
    if (deviceConnected) {
      oled_display.println("Conn");
    } else {
      oled_display.println("Disconn");
    }

    oled_display.print("Sonic:");
    if (radar_echo_recv_time_stamp - radar_echo_trig_time_stamp > 0 && radar_echo == true) {
      oled_display.println(radar_echo_recv_time_stamp - radar_echo_trig_time_stamp);
    } else {
      oled_display.println(0);
    }

    oled_display.print("angle:");
    oled_display.println(angle_x);

    oled_display.display();
    vTaskDelay(20 / portTICK_PERIOD_MS);
  }
}

void radar_get_distance(void *pvParameters) {
  while (1) {
    vTaskDelay(200 / portTICK_PERIOD_MS);
    radar_echo_recv_time_stamp = 100;
    radar_echo_trig_time_stamp = 0;
    radar_echo = false;
    vTaskSuspendAll();
    digitalWrite(radar_trig_pin, LOW);
    delayMicroseconds(2);
    digitalWrite(radar_trig_pin, HIGH);
    delayMicroseconds(10);
    radar_echo_trig_time_stamp = millis();
    digitalWrite(radar_trig_pin, LOW);
    // radar_echo_recv_time_stamp = pulseIn(radar_echo_pin, HIGH);
    xTaskResumeAll();
  }
}

void serial_print_log() {
  // Serial.print(uxTaskGetStackHighWaterMark(NULL));
  // if (system_run) {
  //   Serial.print(",system_run");
  // } else {
  //   Serial.print(",system_stop");
  // }
  // Serial.print(" fetch_interval:");
  // Serial.print(imu_fetch_interval);
  // Serial.print(",L_Pwm:");
  // Serial.print(left_motor_pwm);
  // Serial.print(",speed:");
  // Serial.print(motor_r_speed);
  // Serial.print(",l_speed_filt:");
  // Serial.print(motor_l_speed_filter);
  // Serial.print(",r_speed_filt:");
  // Serial.print(motor_r_speed_filter);
  // Serial.print(",Vertical_control:");
  // Serial.print(vertical_ctrl);
  // Serial.print(",Velocity_control:");
  // Serial.print(velocity_ctrl);
  // Serial.print(",turn_control:");
  // Serial.print(turn_ctrl);
  // Serial.print(",L_Speed:");
  // Serial.print(motor_l_speed_filter);
  // Serial.print(",R_Speed:");
  // Serial.print(motor_r_speed_filter);
  // Serial.print(",L_Position:");
  // Serial.print(motor_encoder_l_cnt);
  // Serial.print(",R_Position:");
  // Serial.print(motor_encoder_r_cnt);
  // // Serial.print(",gyro_z:");
  // Serial.print(gyro_rate_z);
  // Serial.print(",angle_x:");
  // Serial.print(angle_x);
  // Serial.print(",acc_angle_x:");
  // Serial.print(acc_angle_x);
  // Serial.println();
}
