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
CMAKE_SOURCE_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/t10test_cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/t10test_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/t10test_cpp.dir/flags.make

CMakeFiles/t10test_cpp.dir/t10test.cc.obj: CMakeFiles/t10test_cpp.dir/flags.make
CMakeFiles/t10test_cpp.dir/t10test.cc.obj: ../t10test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/t10test_cpp.dir/t10test.cc.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\t10test_cpp.dir\t10test.cc.obj -c "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\t10test.cc"

CMakeFiles/t10test_cpp.dir/t10test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/t10test_cpp.dir/t10test.cc.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\t10test.cc" > CMakeFiles\t10test_cpp.dir\t10test.cc.i

CMakeFiles/t10test_cpp.dir/t10test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/t10test_cpp.dir/t10test.cc.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\t10test.cc" -o CMakeFiles\t10test_cpp.dir\t10test.cc.s

CMakeFiles/t10test_cpp.dir/editor2.cc.obj: CMakeFiles/t10test_cpp.dir/flags.make
CMakeFiles/t10test_cpp.dir/editor2.cc.obj: ../editor2.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/t10test_cpp.dir/editor2.cc.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\t10test_cpp.dir\editor2.cc.obj -c "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\editor2.cc"

CMakeFiles/t10test_cpp.dir/editor2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/t10test_cpp.dir/editor2.cc.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\editor2.cc" > CMakeFiles\t10test_cpp.dir\editor2.cc.i

CMakeFiles/t10test_cpp.dir/editor2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/t10test_cpp.dir/editor2.cc.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\editor2.cc" -o CMakeFiles\t10test_cpp.dir\editor2.cc.s

# Object files for target t10test_cpp
t10test_cpp_OBJECTS = \
"CMakeFiles/t10test_cpp.dir/t10test.cc.obj" \
"CMakeFiles/t10test_cpp.dir/editor2.cc.obj"

# External object files for target t10test_cpp
t10test_cpp_EXTERNAL_OBJECTS =

t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/t10test.cc.obj
t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/editor2.cc.obj
t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/build.make
t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/linklibs.rsp
t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/objects1.rsp
t10test_cpp.exe: CMakeFiles/t10test_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable t10test_cpp.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\t10test_cpp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/t10test_cpp.dir/build: t10test_cpp.exe

.PHONY : CMakeFiles/t10test_cpp.dir/build

CMakeFiles/t10test_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\t10test_cpp.dir\cmake_clean.cmake
.PHONY : CMakeFiles/t10test_cpp.dir/clean

CMakeFiles/t10test_cpp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A2\files_CPP\cmake-build-debug\CMakeFiles\t10test_cpp.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/t10test_cpp.dir/depend

