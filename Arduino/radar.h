#ifndef __RADAR__
#define __RADAR__

#define radar_trig_pin 20
#define radar_echo_pin 21

extern int radar_echo_recv_time_stamp;
extern int radar_echo_trig_time_stamp;

extern bool radar_echo;

void radar_init();

void ARDUINO_ISR_ATTR radar_echo_recv_isr();

#endif