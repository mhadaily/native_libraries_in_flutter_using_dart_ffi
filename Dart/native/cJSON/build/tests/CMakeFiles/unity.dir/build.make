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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/majid/Projects/Telia/my_app_sample/native/cJSON

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/unity.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/unity.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/unity.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/unity.dir/flags.make

tests/CMakeFiles/unity.dir/unity/src/unity.c.o: tests/CMakeFiles/unity.dir/flags.make
tests/CMakeFiles/unity.dir/unity/src/unity.c.o: ../tests/unity/src/unity.c
tests/CMakeFiles/unity.dir/unity/src/unity.c.o: tests/CMakeFiles/unity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/unity.dir/unity/src/unity.c.o"
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/unity.dir/unity/src/unity.c.o -MF CMakeFiles/unity.dir/unity/src/unity.c.o.d -o CMakeFiles/unity.dir/unity/src/unity.c.o -c /Users/majid/Projects/Telia/my_app_sample/native/cJSON/tests/unity/src/unity.c

tests/CMakeFiles/unity.dir/unity/src/unity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unity.dir/unity/src/unity.c.i"
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/majid/Projects/Telia/my_app_sample/native/cJSON/tests/unity/src/unity.c > CMakeFiles/unity.dir/unity/src/unity.c.i

tests/CMakeFiles/unity.dir/unity/src/unity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unity.dir/unity/src/unity.c.s"
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/majid/Projects/Telia/my_app_sample/native/cJSON/tests/unity/src/unity.c -o CMakeFiles/unity.dir/unity/src/unity.c.s

# Object files for target unity
unity_OBJECTS = \
"CMakeFiles/unity.dir/unity/src/unity.c.o"

# External object files for target unity
unity_EXTERNAL_OBJECTS =

tests/libunity.a: tests/CMakeFiles/unity.dir/unity/src/unity.c.o
tests/libunity.a: tests/CMakeFiles/unity.dir/build.make
tests/libunity.a: tests/CMakeFiles/unity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libunity.a"
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/unity.dir/cmake_clean_target.cmake
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/unity.dir/build: tests/libunity.a
.PHONY : tests/CMakeFiles/unity.dir/build

tests/CMakeFiles/unity.dir/clean:
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/unity.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/unity.dir/clean

tests/CMakeFiles/unity.dir/depend:
	cd /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/majid/Projects/Telia/my_app_sample/native/cJSON /Users/majid/Projects/Telia/my_app_sample/native/cJSON/tests /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests /Users/majid/Projects/Telia/my_app_sample/native/cJSON/build/tests/CMakeFiles/unity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/unity.dir/depend

