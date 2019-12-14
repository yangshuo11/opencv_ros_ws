cmake_minimum_required(VERSION 2.8.3)
project(object_segmentation)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  cv_bridge
  image_transport
  sensor_msgs
  genmsg
)

find_package(OpenCV)


add_message_files(
   FILES
   Num.msg
 )

add_service_files(
   FILES
   AddTwoInts.srv
 )


generate_messages(
   DEPENDENCIES
   std_msgs
   sensor_msgs
 )

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES object_segmentation
   CATKIN_DEPENDS roscpp rospy std_msgs message_runtime sensor_msgs cv_bridge
#  DEPENDS system_lib
)


add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker object_segmentation_generate_message_cpp)

add_executable(image_receiver src/object_segmentation.cpp)
target_link_libraries(image_receiver ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_dependencies(image_receiver object_segmentation_generate_message_cpp)

add_executable(client1 src/client1.cpp)
target_link_libraries(client1 ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_dependencies(client1 object_segmentation_generate_message_cpp)

add_executable(client2 src/client2.cpp)
target_link_libraries(client2 ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_dependencies(client2 object_segmentation_generate_message_cpp)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)


