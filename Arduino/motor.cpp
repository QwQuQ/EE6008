#include "config.h"

// encoder data
long motor_encoder_l_cnt = 0;
long motor_encoder_l_cnt_prev;
long motor_l_position = 0;

long motor_encoder_r_cnt = 0;
long motor_encoder_r_cnt_prev;
long motor_r_position = 0;

float motor_l_speed;
float motor_r_speed;
float motor_l_speed_filter = 0;
float motor_r_speed_filter = 0;

// left motor GPIO init
void motor_l_gpio_init(void) {
  pinMode(motor_l_encoder_pin_1, INPUT_PULLDOWN);
  pinMode(motor_l_encoder_pin_2, INPUT_PULLDOWN);
  pinMode(motor_l_pwm_pin, OUTPUT);
  pinMode(motor_l_dir_pin_1, OUTPUT);
  pinMode(motor_l_dir_pin_2, OUTPUT);
}
// right motor GPIO init
void motor_r_gpio_init(void) {
  pinMode(motor_r_encoder_pin_1, INPUT_PULLDOWN);
  pinMode(motor_r_encoder_pin_2, INPUT_PULLDOWN);
  pinMode(motor_r_pwm_pin, OUTPUT);
  pinMode(motor_r_dir_pin_1, OUTPUT);
  pinMode(motor_r_dir_pin_2, OUTPUT);
}

/* left motor pwm control function
  input:  
    int speed: motor speed from -255 to 255
  output: void
*/
void motor_l_set_pwm(int speed) {
  speed = constrain(speed, -255, 255);
  if (speed >= 0) {
    digitalWrite(motor_l_dir_pin_1, LOW);
    digitalWrite(motor_l_dir_pin_2, HIGH);
    analogWrite(motor_l_pwm_pin, speed);
  } else {
    digitalWrite(motor_l_dir_pin_1, HIGH);
    digitalWrite(motor_l_dir_pin_2, LOW);
    analogWrite(motor_l_pwm_pin, -speed);
  }
}

/* right motor pwm control function
  input:  
    int speed: motor speed from -255 to 255
  output: void
*/
void motor_r_set_pwm(int speed) {
  speed = constrain(speed, -255, 255);
  if (speed >= 0) {
    digitalWrite(motor_r_dir_pin_1, LOW);
    digitalWrite(motor_r_dir_pin_2, HIGH);
    analogWrite(motor_r_pwm_pin, speed);
  } else {
    digitalWrite(motor_r_dir_pin_1, HIGH);
    digitalWrite(motor_r_dir_pin_2, LOW);
    analogWrite(motor_r_pwm_pin, -speed);
  }
}

/* motor encoder isr hanlder*/
void ARDUINO_ISR_ATTR motor_l_encoder_isr() {
  if (digitalRead(motor_l_encoder_pin_2)) {
    motor_encoder_l_cnt++;
  } else {
    motor_encoder_l_cnt--;
  }
}
void ARDUINO_ISR_ATTR motor_r_encoder_isr() {
  if (digitalRead(motor_r_encoder_pin_2)) {
    motor_encoder_r_cnt++;
  } else {
    motor_encoder_r_cnt--;
  }
}