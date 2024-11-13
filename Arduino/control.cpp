#include "config.h"
#include "Arduino.h"

// pid control constant--------------------------------
// stand loop------------------------------------------
const float vertical_kp = -14.0f;
const float vertical_ki = 0.0f;
const float vertical_kd = -0.3f;
const float vertical_mid = 1.5;
// speed loop------------------------------------------
const float speed_kp = -15.0f;
const float speed_ki = speed_kp / 200;
const float speed_kd = 0;
// turn loop-------------------------------------------
const float turn_kd = 0.15;
//-----------------------------------------------------

int vertical_control() {
  return vertical_kp * (angle_x - vertical_mid) + vertical_kd * gyro_rate_x;
}

int velocity_control(float target_speed, float speed, float speed_intergral) {
  if (speed_intergral > 700 || speed_intergral < -700)
    speed_intergral = 50;
  return (speed - target_speed) * speed_kp + speed_intergral * speed_ki;
}

int turn_control(float motor_l_position, float motor_r_position) {
  float error = motor_r_position - motor_l_position;
  if (error >= 30 || error <= -30) {
    return error * turn_kd;
  }
  return 0;
}