# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local"

# Include any dependencies generated for this target.
include CMakeFiles/client0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client0.dir/flags.make

CMakeFiles/client0.dir/client.c.obj: CMakeFiles/client0.dir/flags.make
CMakeFiles/client0.dir/client.c.obj: ../client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/client0.dir/client.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\client0.dir\client.c.obj   -c "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c"

CMakeFiles/client0.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/client0.dir/client.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c" > CMakeFiles\client0.dir\client.c.i

CMakeFiles/client0.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/client0.dir/client.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c" -o CMakeFiles\client0.dir\client.c.s

# Object files for target client0
client0_OBJECTS = \
"CMakeFiles/client0.dir/client.c.obj"

# External object files for target client0
client0_EXTERNAL_OBJECTS =

client0.exe: CMakeFiles/client0.dir/client.c.obj
client0.exe: CMakeFiles/client0.dir/build.make
client0.exe: CMakeFiles/client0.dir/linklibs.rsp
client0.exe: CMakeFiles/client0.dir/objects1.rsp
client0.exe: CMakeFiles/client0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable client0.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\client0.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client0.dir/build: client0.exe

.PHONY : CMakeFiles/client0.dir/build

CMakeFiles/client0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\client0.dir\cmake_clean.cmake
.PHONY : CMakeFiles/client0.dir/clean

CMakeFiles/client0.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles\client0.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/client0.dir/depend

