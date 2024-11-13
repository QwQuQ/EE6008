#include "config.h"

int radar_echo_recv_time_stamp;
int radar_echo_trig_time_stamp;

bool radar_echo;

void radar_init(){
  pinMode(radar_trig_pin, OUTPUT);
  pinMode(radar_echo_pin, INPUT_PULLDOWN);
  attachInterrupt(digitalPinToInterrupt(radar_echo_pin), radar_echo_recv_isr, FALLING);
}

void ARDUINO_ISR_ATTR radar_echo_recv_isr() {
  radar_echo_recv_time_stamp = millis();
  
  radar_echo = true;
}