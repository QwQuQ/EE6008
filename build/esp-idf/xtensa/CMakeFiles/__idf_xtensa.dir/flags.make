# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile ASM with /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc
# compile C with /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc
ASM_DEFINES = -DESP_PLATFORM -DIDF_VER=\"v5.1.2-dirty\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

ASM_INCLUDES = -I/mnt/c/Users/27358/ESP32/project/EE6008/build/config -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/newlib/platform_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include/freertos -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/arch/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/. -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/private_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/heap/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/log/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/platform_port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_common/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/include/private -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps/sntp -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/lwip/src/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/freertos/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include/arch

ASM_FLAGS = -mlongcalls  -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/project/EE6008=. -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -DconfigENABLE_FREERTOS_DEBUG_OCDAWARE=1

C_DEFINES = -DESP_PLATFORM -DIDF_VER=\"v5.1.2-dirty\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/mnt/c/Users/27358/ESP32/project/EE6008/build/config -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/xtensa/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/newlib/platform_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include/freertos -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/freertos/esp_additions/arch/xtensa/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/include/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/. -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_hw_support/port/esp32s3/private_include -I/mnt/c/Users/27358/ESP32/esp-idf/components/heap/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/log/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/soc/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/esp32s3/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/hal/platform_port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/include/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_rom/esp32s3 -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_common/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/soc -I/mnt/c/Users/27358/ESP32/esp-idf/components/esp_system/port/include/private -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/include/apps/sntp -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/lwip/src/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/freertos/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include -I/mnt/c/Users/27358/ESP32/esp-idf/components/lwip/port/esp32xx/include/arch

C_FLAGS = -mlongcalls  -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/project/EE6008=. -fmacro-prefix-map=/mnt/c/Users/27358/ESP32/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -DconfigENABLE_FREERTOS_DEBUG_OCDAWARE=1 -std=gnu17 -Wno-old-style-declaration

