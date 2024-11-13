#ifndef __EE__CONTROL__
#define __EE__CONTROL__

// pid control constant
//vertical loop-----------------------------------------
extern const float vertical_kp;
extern const float vertical_ki;
extern const float vertical_kd;
extern const float vertical_mid;
//speed loop--------------------------------------------
extern const float speed_kp;
extern const float speed_ki;
extern const float speed_kd;
//turn loop---------------------------------------------
extern const float turn_kd;
//------------------------------------------------------

int vertical_control();
int velocity_control(float target_speed, float speed, float speed_intergral);
int turn_control(float motor_l_position, float motor_r_position);

#endif