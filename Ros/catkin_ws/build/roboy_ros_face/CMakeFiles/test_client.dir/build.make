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
include roboy_ros_face/CMakeFiles/test_client.dir/depend.make

# Include the progress variables for this target.
include roboy_ros_face/CMakeFiles/test_client.dir/progress.make

# Include the compile flags for this target's objects.
include roboy_ros_face/CMakeFiles/test_client.dir/flags.make

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o: roboy_ros_face/CMakeFiles/test_client.dir/flags.make
roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o: /home/sebtut/catkin_ws/src/roboy_ros_face/src/test_client.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebtut/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o"
	cd /home/sebtut/catkin_ws/build/roboy_ros_face && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_client.dir/src/test_client.cpp.o -c /home/sebtut/catkin_ws/src/roboy_ros_face/src/test_client.cpp

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_client.dir/src/test_client.cpp.i"
	cd /home/sebtut/catkin_ws/build/roboy_ros_face && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebtut/catkin_ws/src/roboy_ros_face/src/test_client.cpp > CMakeFiles/test_client.dir/src/test_client.cpp.i

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_client.dir/src/test_client.cpp.s"
	cd /home/sebtut/catkin_ws/build/roboy_ros_face && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebtut/catkin_ws/src/roboy_ros_face/src/test_client.cpp -o CMakeFiles/test_client.dir/src/test_client.cpp.s

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.requires:
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.requires

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.provides: roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.requires
	$(MAKE) -f roboy_ros_face/CMakeFiles/test_client.dir/build.make roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.provides.build
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.provides

roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.provides.build: roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o

# Object files for target test_client
test_client_OBJECTS = \
"CMakeFiles/test_client.dir/src/test_client.cpp.o"

# External object files for target test_client
test_client_EXTERNAL_OBJECTS =

/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: roboy_ros_face/CMakeFiles/test_client.dir/build.make
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/libroscpp.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/librosconsole.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/liblog4cxx.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/librostime.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /opt/ros/indigo/lib/libcpp_common.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /home/sebtut/catkin_ws/devel/lib/librealsense.so.1.11.1
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libGL.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /home/sebtut/affdex-sdk/lib/libaffdex-native.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_videostab.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_superres.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_stitching.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_contrib.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_nonfree.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_ocl.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_gpu.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_photo.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_objdetect.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_legacy.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_video.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_ml.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_calib3d.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_features2d.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_highgui.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_imgproc.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_flann.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: /usr/local/lib/libopencv_core.so.2.4.13
/home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client: roboy_ros_face/CMakeFiles/test_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client"
	cd /home/sebtut/catkin_ws/build/roboy_ros_face && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
roboy_ros_face/CMakeFiles/test_client.dir/build: /home/sebtut/catkin_ws/devel/lib/roboy_ros_face/test_client
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/build

roboy_ros_face/CMakeFiles/test_client.dir/requires: roboy_ros_face/CMakeFiles/test_client.dir/src/test_client.cpp.o.requires
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/requires

roboy_ros_face/CMakeFiles/test_client.dir/clean:
	cd /home/sebtut/catkin_ws/build/roboy_ros_face && $(CMAKE_COMMAND) -P CMakeFiles/test_client.dir/cmake_clean.cmake
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/clean

roboy_ros_face/CMakeFiles/test_client.dir/depend:
	cd /home/sebtut/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebtut/catkin_ws/src /home/sebtut/catkin_ws/src/roboy_ros_face /home/sebtut/catkin_ws/build /home/sebtut/catkin_ws/build/roboy_ros_face /home/sebtut/catkin_ws/build/roboy_ros_face/CMakeFiles/test_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : roboy_ros_face/CMakeFiles/test_client.dir/depend
