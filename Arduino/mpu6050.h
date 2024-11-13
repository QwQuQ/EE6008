#ifndef __EE_MPU6050__
#define __EE_MPU6050__

// MPU6050 gpio define
#define mpu6050_sda_pin 4
#define mpu6050_scl_pin 5

// imu global data
extern float angle_x_raw;
extern float angle_x;
extern float angle_y;
extern float gyro_rate_x;
extern float gyro_rate_y;
extern float gyro_rate_z;
extern float acc_angle_x;
extern float acc_angle_y;

void car_imu_init();
void car_imu_update_interval();
void car_imu_compute_angles();

#endif