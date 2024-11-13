#ifndef KalmanFilter_h
#define KalmanFilter_h

class kalman_filter
{
public:
  kalman_filter(float q_angle, float q_gyro, float r_angle, float c_0);
  float get_angle(float angle_m, float gyro_m, float dt);

private:
  float angle;
  float q_angle;
  float q_gyro;
  float r_angle;
  float c_0;
	float angle_err,q_bias;
	float p_dot[4] = { 0, 0, 0, 0};
	float p[2][2] = {{ 1, 0 }, { 0, 1 }};
	float pc_t_0, pc_t_1, e, k_0, k_1, t_0, t_1;
	float angle_dot;
};

#endif