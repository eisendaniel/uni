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
CMAKE_SOURCE_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/files.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/files.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/files.dir/flags.make

CMakeFiles/files.dir/myeditor.cc.obj: CMakeFiles/files.dir/flags.make
CMakeFiles/files.dir/myeditor.cc.obj: CMakeFiles/files.dir/includes_CXX.rsp
CMakeFiles/files.dir/myeditor.cc.obj: ../myeditor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/files.dir/myeditor.cc.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\files.dir\myeditor.cc.obj -c "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\myeditor.cc"

CMakeFiles/files.dir/myeditor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/files.dir/myeditor.cc.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\myeditor.cc" > CMakeFiles\files.dir\myeditor.cc.i

CMakeFiles/files.dir/myeditor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/files.dir/myeditor.cc.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\myeditor.cc" -o CMakeFiles\files.dir\myeditor.cc.s

# Object files for target files
files_OBJECTS = \
"CMakeFiles/files.dir/myeditor.cc.obj"

# External object files for target files
files_EXTERNAL_OBJECTS =

files.exe: CMakeFiles/files.dir/myeditor.cc.obj
files.exe: CMakeFiles/files.dir/build.make
files.exe: CMakeFiles/files.dir/linklibs.rsp
files.exe: CMakeFiles/files.dir/objects1.rsp
files.exe: CMakeFiles/files.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable files.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\files.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/files.dir/build: files.exe

.PHONY : CMakeFiles/files.dir/build

CMakeFiles/files.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\files.dir\cmake_clean.cmake
.PHONY : CMakeFiles/files.dir/clean

CMakeFiles/files.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A1\files_c\cmake-build-debug\CMakeFiles\files.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/files.dir/depend
