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
CMAKE_SOURCE_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local"

# Include any dependencies generated for this target.
include CMakeFiles/serverprogram.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serverprogram.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serverprogram.dir/flags.make

CMakeFiles/serverprogram.dir/server.cc.obj: CMakeFiles/serverprogram.dir/flags.make
CMakeFiles/serverprogram.dir/server.cc.obj: ../server.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/serverprogram.dir/server.cc.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\serverprogram.dir\server.cc.obj -c "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\server.cc"

CMakeFiles/serverprogram.dir/server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverprogram.dir/server.cc.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\server.cc" > CMakeFiles\serverprogram.dir\server.cc.i

CMakeFiles/serverprogram.dir/server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverprogram.dir/server.cc.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\server.cc" -o CMakeFiles\serverprogram.dir\server.cc.s

CMakeFiles/serverprogram.dir/movieTable.cc.obj: CMakeFiles/serverprogram.dir/flags.make
CMakeFiles/serverprogram.dir/movieTable.cc.obj: ../movieTable.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/serverprogram.dir/movieTable.cc.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\serverprogram.dir\movieTable.cc.obj -c "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\movieTable.cc"

CMakeFiles/serverprogram.dir/movieTable.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverprogram.dir/movieTable.cc.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\movieTable.cc" > CMakeFiles\serverprogram.dir\movieTable.cc.i

CMakeFiles/serverprogram.dir/movieTable.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverprogram.dir/movieTable.cc.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\movieTable.cc" -o CMakeFiles\serverprogram.dir\movieTable.cc.s

# Object files for target serverprogram
serverprogram_OBJECTS = \
"CMakeFiles/serverprogram.dir/server.cc.obj" \
"CMakeFiles/serverprogram.dir/movieTable.cc.obj"

# External object files for target serverprogram
serverprogram_EXTERNAL_OBJECTS =

serverprogram.exe: CMakeFiles/serverprogram.dir/server.cc.obj
serverprogram.exe: CMakeFiles/serverprogram.dir/movieTable.cc.obj
serverprogram.exe: CMakeFiles/serverprogram.dir/build.make
serverprogram.exe: CMakeFiles/serverprogram.dir/linklibs.rsp
serverprogram.exe: CMakeFiles/serverprogram.dir/objects1.rsp
serverprogram.exe: CMakeFiles/serverprogram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable serverprogram.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\serverprogram.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serverprogram.dir/build: serverprogram.exe

.PHONY : CMakeFiles/serverprogram.dir/build

CMakeFiles/serverprogram.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\serverprogram.dir\cmake_clean.cmake
.PHONY : CMakeFiles/serverprogram.dir/clean

CMakeFiles/serverprogram.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local" "C:\Users\Daniel\Dropbox\Course Work\2019\241 NWEN\Ass\NWEN241_A5\serverprogram\build-local\CMakeFiles\serverprogram.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/serverprogram.dir/depend

