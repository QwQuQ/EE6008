#ifndef __EE_MOTOR__
#define __EE_MOTOR__

// encoder data
// left
extern long motor_encoder_l_cnt;
extern long motor_encoder_l_cnt_prev;
extern long motor_l_position;
extern bool motor_l_encoder_dir;
//right
extern long motor_encoder_r_cnt;
extern long motor_encoder_r_cnt_prev;
extern long motor_r_position;
extern bool motor_r_encoder_dir;

// speed
extern float motor_l_speed;
extern float motor_r_speed;
extern float motor_l_speed_filter;
extern float motor_r_speed_filter;

// left motor control gpio define
#define motor_l_pwm_pin 6
#define motor_l_dir_pin_1 7
#define motor_l_dir_pin_2 15

// right motor control gpio define
#define motor_r_pwm_pin 18
#define motor_r_dir_pin_1 17
#define motor_r_dir_pin_2 16

// motor encoder gpio define
#define motor_l_encoder_pin_1 46
#define motor_l_encoder_pin_2 9
#define motor_r_encoder_pin_1 11
#define motor_r_encoder_pin_2 10

void motor_l_gpio_init(void);
void motor_r_gpio_init(void);

void motor_l_set_pwm(int speed);
void motor_r_set_pwm(int speed);

void ARDUINO_ISR_ATTR motor_l_encoder_isr();
void ARDUINO_ISR_ATTR motor_r_encoder_isr();

#endif