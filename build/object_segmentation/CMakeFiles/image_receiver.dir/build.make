# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ys/MyGitRepository/opencv_ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ys/MyGitRepository/opencv_ros_ws/build

# Include any dependencies generated for this target.
include object_segmentation/CMakeFiles/image_receiver.dir/depend.make

# Include the progress variables for this target.
include object_segmentation/CMakeFiles/image_receiver.dir/progress.make

# Include the compile flags for this target's objects.
include object_segmentation/CMakeFiles/image_receiver.dir/flags.make

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o: object_segmentation/CMakeFiles/image_receiver.dir/flags.make
object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o: /home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/src/object_segmentation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ys/MyGitRepository/opencv_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o"
	cd /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o -c /home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/src/object_segmentation.cpp

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.i"
	cd /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/src/object_segmentation.cpp > CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.i

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.s"
	cd /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/src/object_segmentation.cpp -o CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.s

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.requires:

.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.requires

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.provides: object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.requires
	$(MAKE) -f object_segmentation/CMakeFiles/image_receiver.dir/build.make object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.provides.build
.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.provides

object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.provides.build: object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o


# Object files for target image_receiver
image_receiver_OBJECTS = \
"CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o"

# External object files for target image_receiver
image_receiver_EXTERNAL_OBJECTS =

/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: object_segmentation/CMakeFiles/image_receiver.dir/build.make
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libcv_bridge.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libimage_transport.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libmessage_filters.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libclass_loader.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/libPocoFoundation.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libroscpp.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/librosconsole.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libroslib.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/librospack.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/librostime.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/libcpp_common.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver: object_segmentation/CMakeFiles/image_receiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ys/MyGitRepository/opencv_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver"
	cd /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_receiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
object_segmentation/CMakeFiles/image_receiver.dir/build: /home/ys/MyGitRepository/opencv_ros_ws/devel/lib/object_segmentation/image_receiver

.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/build

object_segmentation/CMakeFiles/image_receiver.dir/requires: object_segmentation/CMakeFiles/image_receiver.dir/src/object_segmentation.cpp.o.requires

.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/requires

object_segmentation/CMakeFiles/image_receiver.dir/clean:
	cd /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation && $(CMAKE_COMMAND) -P CMakeFiles/image_receiver.dir/cmake_clean.cmake
.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/clean

object_segmentation/CMakeFiles/image_receiver.dir/depend:
	cd /home/ys/MyGitRepository/opencv_ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ys/MyGitRepository/opencv_ros_ws/src /home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation /home/ys/MyGitRepository/opencv_ros_ws/build /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation /home/ys/MyGitRepository/opencv_ros_ws/build/object_segmentation/CMakeFiles/image_receiver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : object_segmentation/CMakeFiles/image_receiver.dir/depend

