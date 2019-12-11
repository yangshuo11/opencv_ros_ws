# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_segmentation: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iobject_segmentation:/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_segmentation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_object_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_segmentation" "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_custom_target(_object_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_segmentation" "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_segmentation
)

### Generating Services
_generate_srv_cpp(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_segmentation
)

### Generating Module File
_generate_module_cpp(object_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_segmentation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_segmentation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_segmentation_generate_messages object_segmentation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(object_segmentation_generate_messages_cpp _object_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_dependencies(object_segmentation_generate_messages_cpp _object_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_segmentation_gencpp)
add_dependencies(object_segmentation_gencpp object_segmentation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_segmentation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_segmentation
)

### Generating Services
_generate_srv_eus(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_segmentation
)

### Generating Module File
_generate_module_eus(object_segmentation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_segmentation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_segmentation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_segmentation_generate_messages object_segmentation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(object_segmentation_generate_messages_eus _object_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_dependencies(object_segmentation_generate_messages_eus _object_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_segmentation_geneus)
add_dependencies(object_segmentation_geneus object_segmentation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_segmentation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_segmentation
)

### Generating Services
_generate_srv_lisp(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_segmentation
)

### Generating Module File
_generate_module_lisp(object_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_segmentation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_segmentation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_segmentation_generate_messages object_segmentation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(object_segmentation_generate_messages_lisp _object_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_dependencies(object_segmentation_generate_messages_lisp _object_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_segmentation_genlisp)
add_dependencies(object_segmentation_genlisp object_segmentation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_segmentation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_segmentation
)

### Generating Services
_generate_srv_nodejs(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_segmentation
)

### Generating Module File
_generate_module_nodejs(object_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_segmentation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_segmentation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_segmentation_generate_messages object_segmentation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(object_segmentation_generate_messages_nodejs _object_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_dependencies(object_segmentation_generate_messages_nodejs _object_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_segmentation_gennodejs)
add_dependencies(object_segmentation_gennodejs object_segmentation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_segmentation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation
)

### Generating Services
_generate_srv_py(object_segmentation
  "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation
)

### Generating Module File
_generate_module_py(object_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_segmentation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_segmentation_generate_messages object_segmentation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(object_segmentation_generate_messages_py _object_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ys/MyGitRepository/opencv_ros_ws/src/object_segmentation/msg/Num.msg" NAME_WE)
add_dependencies(object_segmentation_generate_messages_py _object_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_segmentation_genpy)
add_dependencies(object_segmentation_genpy object_segmentation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_segmentation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_segmentation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_segmentation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(object_segmentation_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_segmentation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_segmentation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(object_segmentation_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_segmentation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_segmentation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(object_segmentation_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_segmentation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_segmentation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(object_segmentation_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_segmentation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(object_segmentation_generate_messages_py sensor_msgs_generate_messages_py)
endif()
