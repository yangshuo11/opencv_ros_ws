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
CMAKE_SOURCE_DIR = /home/ys/opencv_ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ys/opencv_ros_ws/build

# Utility rule file for object_segmentation_generate_messages_cpp.

# Include the progress variables for this target.
include object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/progress.make

object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp: /home/ys/opencv_ros_ws/devel/include/object_segmentation/Num.h
object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp: /home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h


/home/ys/opencv_ros_ws/devel/include/object_segmentation/Num.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ys/opencv_ros_ws/devel/include/object_segmentation/Num.h: /home/ys/opencv_ros_ws/src/object_segmentation/msg/Num.msg
/home/ys/opencv_ros_ws/devel/include/object_segmentation/Num.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ys/opencv_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from object_segmentation/Num.msg"
	cd /home/ys/opencv_ros_ws/src/object_segmentation && /home/ys/opencv_ros_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ys/opencv_ros_ws/src/object_segmentation/msg/Num.msg -Iobject_segmentation:/home/ys/opencv_ros_ws/src/object_segmentation/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -p object_segmentation -o /home/ys/opencv_ros_ws/devel/include/object_segmentation -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h: /home/ys/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv
/home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ys/opencv_ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from object_segmentation/AddTwoInts.srv"
	cd /home/ys/opencv_ros_ws/src/object_segmentation && /home/ys/opencv_ros_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ys/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv -Iobject_segmentation:/home/ys/opencv_ros_ws/src/object_segmentation/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -p object_segmentation -o /home/ys/opencv_ros_ws/devel/include/object_segmentation -e /opt/ros/kinetic/share/gencpp/cmake/..

object_segmentation_generate_messages_cpp: object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp
object_segmentation_generate_messages_cpp: /home/ys/opencv_ros_ws/devel/include/object_segmentation/Num.h
object_segmentation_generate_messages_cpp: /home/ys/opencv_ros_ws/devel/include/object_segmentation/AddTwoInts.h
object_segmentation_generate_messages_cpp: object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/build.make

.PHONY : object_segmentation_generate_messages_cpp

# Rule to build all files generated by this target.
object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/build: object_segmentation_generate_messages_cpp

.PHONY : object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/build

object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/clean:
	cd /home/ys/opencv_ros_ws/build/object_segmentation && $(CMAKE_COMMAND) -P CMakeFiles/object_segmentation_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/clean

object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/depend:
	cd /home/ys/opencv_ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ys/opencv_ros_ws/src /home/ys/opencv_ros_ws/src/object_segmentation /home/ys/opencv_ros_ws/build /home/ys/opencv_ros_ws/build/object_segmentation /home/ys/opencv_ros_ws/build/object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : object_segmentation/CMakeFiles/object_segmentation_generate_messages_cpp.dir/depend

