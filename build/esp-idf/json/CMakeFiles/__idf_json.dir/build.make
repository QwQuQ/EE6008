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
include esp-idf/json/CMakeFiles/__idf_json.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/json/CMakeFiles/__idf_json.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/json/CMakeFiles/__idf_json.dir/flags.make

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/flags.make
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON.c
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj -MF CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj.d -o CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON.c

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON.c > CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON.c -o CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/flags.make
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON_Utils.c
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj -MF CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj.d -o CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj -c /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON_Utils.c

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON_Utils.c > CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && /home/hatsune/.espressif/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/27358/ESP32/esp-idf/components/json/cJSON/cJSON_Utils.c -o CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s

# Object files for target __idf_json
__idf_json_OBJECTS = \
"CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj" \
"CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj"

# External object files for target __idf_json
__idf_json_EXTERNAL_OBJECTS =

esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/build.make
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/27358/ESP32/project/EE6008/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libjson.a"
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && $(CMAKE_COMMAND) -P CMakeFiles/__idf_json.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/json/CMakeFiles/__idf_json.dir/build: esp-idf/json/libjson.a
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/build

esp-idf/json/CMakeFiles/__idf_json.dir/clean:
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json && $(CMAKE_COMMAND) -P CMakeFiles/__idf_json.dir/cmake_clean.cmake
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/clean

esp-idf/json/CMakeFiles/__idf_json.dir/depend:
	cd /mnt/c/Users/27358/ESP32/project/EE6008/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/27358/ESP32/project/EE6008 /mnt/c/Users/27358/ESP32/esp-idf/components/json /mnt/c/Users/27358/ESP32/project/EE6008/build /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json /mnt/c/Users/27358/ESP32/project/EE6008/build/esp-idf/json/CMakeFiles/__idf_json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/depend

