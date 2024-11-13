#include "config.h"

kalman_filter::kalman_filter(float q_angle, float q_gyro, float r_angle, float c_0)
{
  this->q_angle = q_angle;
  this->q_gyro = q_gyro;
  this->r_angle = r_angle;
  this->c_0 = c_0;
  this->angle = 0;
}

float kalman_filter::get_angle(float angle_m, float gyro_m, float dt)
{
  angle += (gyro_m - q_bias) * dt;
  angle_err = angle_m - angle;

  p_dot[0] = q_angle - p[0][1] - p[1][0];
  p_dot[1] = - p[1][1];
  p_dot[2] = - p[1][1];
  p_dot[3] = q_gyro;

  p[0][0] += p_dot[0] * dt;
  p[0][1] += p_dot[1] * dt;
  p[1][0] += p_dot[2] * dt;
  p[1][1] += p_dot[3] * dt;

  pc_t_0 = c_0 * p[0][0];
  pc_t_1 = c_0 * p[1][0];
  e = r_angle + c_0 * pc_t_0;
  k_0 = pc_t_0 / e;
  k_1 = pc_t_1 / e;
  t_0 = pc_t_0;
  t_1 = c_0 * p[0][1];

  p[0][0] -= k_0 * t_0;
  p[0][1] -= k_0 * t_1;
  p[1][0] -= k_1 * t_0;
  p[1][1] -= k_1 * t_1;

  angle += k_0 * angle_err;
  q_bias += k_1 * angle_err;
  angle_dot = gyro_m - q_bias;

  return angle;
}