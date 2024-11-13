#include "config.h"

#define oled_display_address 0x3C

//using ESP32 wire1
Adafruit_SSD1306 oled_display(128, 64, &Wire1, -1);

void oled_display_init(){
  Wire1.setPins(oled_display_sda, oled_display_scl);
  oled_display.begin(SSD1306_SWITCHCAPVCC, oled_display_address);
  oled_display.clearDisplay();
  oled_display.display();
}