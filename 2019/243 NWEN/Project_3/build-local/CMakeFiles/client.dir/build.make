# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
include CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/client.c.obj: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/client.c.obj: ../client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/client.dir/client.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\client.dir\client.c.obj   -c "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c"

CMakeFiles/client.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/client.dir/client.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c" > CMakeFiles\client.dir\client.c.i

CMakeFiles/client.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/client.dir/client.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\client.c" -o CMakeFiles\client.dir\client.c.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client.c.obj"

# External object files for target client
client_EXTERNAL_OBJECTS =

client.exe: CMakeFiles/client.dir/client.c.obj
client.exe: CMakeFiles/client.dir/build.make
client.exe: CMakeFiles/client.dir/linklibs.rsp
client.exe: CMakeFiles/client.dir/objects1.rsp
client.exe: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable client.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client.exe

.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\client.dir\cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\243 NWEN\Project_3\build-local\CMakeFiles\client.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend

