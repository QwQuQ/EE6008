# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/27358/ESP32/project/EE6008

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/27358/ESP32/project/EE6008/build

# Include any dependencies generated for this target.
include esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/common/protocomm.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/common/protocomm.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/common/protocomm.c > CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/common/protocomm.c -o CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/constants.pb-c.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj -MF CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj.d -o CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/constants.pb-c.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/constants.pb-c.c > CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/constants.pb-c.c -o CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec0.pb-c.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj -MF CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj.d -o CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec0.pb-c.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec0.pb-c.c > CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec0.pb-c.c -o CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec1.pb-c.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj -MF CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj.d -o CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec1.pb-c.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec1.pb-c.c > CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec1.pb-c.c -o CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec2.pb-c.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj -MF CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj.d -o CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec2.pb-c.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec2.pb-c.c > CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/sec2.pb-c.c -o CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/session.pb-c.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj -MF CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj.d -o CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/session.pb-c.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/session.pb-c.c > CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/proto-c/session.pb-c.c -o CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_console.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_console.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_console.c > CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_console.c -o CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_httpd.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_httpd.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_httpd.c > CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/transports/protocomm_httpd.c -o CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security0.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security0.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/security/security0.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security0.c > CMakeFiles/__idf_protocomm.dir/src/security/security0.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/security/security0.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security0.c -o CMakeFiles/__idf_protocomm.dir/src/security/security0.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security1.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security1.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/security/security1.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security1.c > CMakeFiles/__idf_protocomm.dir/src/security/security1.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/security/security1.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security1.c -o CMakeFiles/__idf_protocomm.dir/src/security/security1.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security2.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security2.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/security/security2.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security2.c > CMakeFiles/__idf_protocomm.dir/src/security/security2.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/security/security2.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/security/security2.c -o CMakeFiles/__idf_protocomm.dir/src/security/security2.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp.c > CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp.c -o CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.s

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/flags.make
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp_mpi.c
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj -MF CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj.d -o CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp_mpi.c

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp_mpi.c > CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.i

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm/src/crypto/srp6a/esp_srp_mpi.c -o CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.s

# Object files for target __idf_protocomm
__idf_protocomm_OBJECTS = \
"CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj" \
"CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj" \
"CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj" \
"CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj" \
"CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj" \
"CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj" \
"CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj"

# External object files for target __idf_protocomm
__idf_protocomm_EXTERNAL_OBJECTS =

esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/common/protocomm.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/constants.pb-c.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec0.pb-c.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec1.pb-c.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/sec2.pb-c.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/proto-c/session.pb-c.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_console.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/transports/protocomm_httpd.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security0.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security1.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/security/security2.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/src/crypto/srp6a/esp_srp_mpi.c.obj
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/build.make
esp-idf/protocomm/libprotocomm.a: esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libprotocomm.a"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && $(CMAKE_COMMAND) -P CMakeFiles/__idf_protocomm.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_protocomm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/build: esp-idf/protocomm/libprotocomm.a
.PHONY : esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/build

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/clean:
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm && $(CMAKE_COMMAND) -P CMakeFiles/__idf_protocomm.dir/cmake_clean.cmake
.PHONY : esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/clean

esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/depend:
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/27358/ESP32/project/EE6008 /mnt/c/Users/27358/ESP32/esp-idf/components/protocomm /mnt/c/Users/27358/ESP32/project/EE6008/build /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/protocomm/CMakeFiles/__idf_protocomm.dir/depend

