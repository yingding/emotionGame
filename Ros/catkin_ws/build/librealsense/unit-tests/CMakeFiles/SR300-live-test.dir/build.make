# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sebtut/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebtut/catkin_ws/build

# Include any dependencies generated for this target.
include librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/depend.make

# Include the progress variables for this target.
include librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/flags.make

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/flags.make
librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o: /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebtut/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o -c /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live.cpp

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.i"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live.cpp > CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.i

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.s"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live.cpp -o CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.s

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.requires:
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.requires

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.provides: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.requires
	$(MAKE) -f librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/build.make librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.provides.build
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.provides

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.provides.build: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/flags.make
librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o: /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live-sr300.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebtut/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o -c /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live-sr300.cpp

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.i"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live-sr300.cpp > CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.i

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.s"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebtut/catkin_ws/src/librealsense/unit-tests/unit-tests-live-sr300.cpp -o CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.s

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.requires:
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.requires

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.provides: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.requires
	$(MAKE) -f librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/build.make librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.provides.build
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.provides

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.provides.build: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o

# Object files for target SR300-live-test
SR300__live__test_OBJECTS = \
"CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o" \
"CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o"

# External object files for target SR300-live-test
SR300__live__test_EXTERNAL_OBJECTS =

/home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o
/home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o
/home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/build.make
/home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test: /home/sebtut/catkin_ws/devel/lib/librealsense.so.1.11.1
/home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test"
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SR300-live-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/build: /home/sebtut/catkin_ws/devel/lib/librealsense/SR300-live-test
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/build

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/requires: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live.cpp.o.requires
librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/requires: librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/unit-tests-live-sr300.cpp.o.requires
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/requires

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/clean:
	cd /home/sebtut/catkin_ws/build/librealsense/unit-tests && $(CMAKE_COMMAND) -P CMakeFiles/SR300-live-test.dir/cmake_clean.cmake
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/clean

librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/depend:
	cd /home/sebtut/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebtut/catkin_ws/src /home/sebtut/catkin_ws/src/librealsense/unit-tests /home/sebtut/catkin_ws/build /home/sebtut/catkin_ws/build/librealsense/unit-tests /home/sebtut/catkin_ws/build/librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense/unit-tests/CMakeFiles/SR300-live-test.dir/depend

