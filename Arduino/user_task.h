#ifndef __USER_TASK__
#define __USER_TASK__

extern int left_motor_pwm;
extern int right_motor_pwm;

extern bool system_run;

// timer settings
extern unsigned long imu_fetch_timer;
extern float imu_fetch_interval;

void balance_control(void *pvParameters);
void oled_monitor(void *pvParameters);
void radar_get_distance(void *pvParameters);

#endif