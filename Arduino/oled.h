#ifndef __OLED__
#define __OLED__

#include "Wire.h"
#include "Adafruit_SSD1306.h"
#include "Adafruit_GFX.h"

#define oled_display_sda 35
#define oled_display_scl 36

extern Adafruit_SSD1306 oled_display;

void testdrawline();
void oled_display_init();

#endif