# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/pkg/bin/cmake

# The command to remove a file.
RM = /usr/pkg/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.kXIej7GX7r

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.kXIej7GX7r/build-remote

# Include any dependencies generated for this target.
include CMakeFiles/encode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/encode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/encode.dir/flags.make

CMakeFiles/encode.dir/encode.c.o: CMakeFiles/encode.dir/flags.make
CMakeFiles/encode.dir/encode.c.o: ../encode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.kXIej7GX7r/build-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/encode.dir/encode.c.o"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/encode.dir/encode.c.o   -c /tmp/tmp.kXIej7GX7r/encode.c

CMakeFiles/encode.dir/encode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/encode.dir/encode.c.i"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.kXIej7GX7r/encode.c > CMakeFiles/encode.dir/encode.c.i

CMakeFiles/encode.dir/encode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/encode.dir/encode.c.s"
	/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.kXIej7GX7r/encode.c -o CMakeFiles/encode.dir/encode.c.s

# Object files for target encode
encode_OBJECTS = \
"CMakeFiles/encode.dir/encode.c.o"

# External object files for target encode
encode_EXTERNAL_OBJECTS =

encode: CMakeFiles/encode.dir/encode.c.o
encode: CMakeFiles/encode.dir/build.make
encode: CMakeFiles/encode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.kXIej7GX7r/build-remote/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable encode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/encode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/encode.dir/build: encode

.PHONY : CMakeFiles/encode.dir/build

CMakeFiles/encode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/encode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/encode.dir/clean

CMakeFiles/encode.dir/depend:
	cd /tmp/tmp.kXIej7GX7r/build-remote && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.kXIej7GX7r /tmp/tmp.kXIej7GX7r /tmp/tmp.kXIej7GX7r/build-remote /tmp/tmp.kXIej7GX7r/build-remote /tmp/tmp.kXIej7GX7r/build-remote/CMakeFiles/encode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/encode.dir/depend
