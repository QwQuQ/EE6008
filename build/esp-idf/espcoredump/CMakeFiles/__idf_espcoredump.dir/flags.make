# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile C with /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc
C_DEFINES = -DESP_PLATFORM -DIDF_VER=\"v5.1.2-dirty\" -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/mnt/c/Users/27358/ESP32/project/EE6008/build/config -I/mnt/c/Users/27358/ESP32/esp-idf/components/espcoredump/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/espcoredump/include/port/xtensa -I/mnt/c/Users/27358/ESP32/esp-idf/components/espcoredump/include_core_dump -I/mnt/c/Users/27358/ESP32/esp-idf/components/espcoredump/include_core_dump/port/xtensa -I/mnt/c/Users/27358/ESP32/esp-idf/components/newlib/platform_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include/freertos -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/arch/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/. -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/private_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/heap/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/log/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/platform_port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_common/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/include/private -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps/sntp -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/lwip/src/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/freertos/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include/arch -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_partition/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/spi_flash/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/bootloader_support/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/bootloader_support/bootloader_flash/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/mbedtls/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/mbedtls/library -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/esp_crt_bundle/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/mbedtls/3rdparty/everest/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m -I/mnt/c/Users/27358/ESP32/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m/p256-m -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/deprecated -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/analog_comparator/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/dac/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/gpio/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/gptimer/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/i2c/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/i2s/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/ledc/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/mcpwm/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/parlio/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/pcnt/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/rmt/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/sdio_slave/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/sdmmc/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/sigma_delta/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/spi/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/temperature_sensor/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/touch_sensor/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/twai/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/uart/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/usb_serial_jtag/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/driver/touch_sensor/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_pm/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_ringbuf/include

C_FLAGS = -mlongcalls  -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/project/EE6008=. -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -DconfigENABLE_FREERTOS_DEBUG_OCDAWARE=1 -std=gnu17 -Wno-old-style-declaration

