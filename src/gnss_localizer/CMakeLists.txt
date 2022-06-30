cmake_minimum_required(VERSION 2.8.3)
project(gnss_localizer)

find_package(autoware_build_flags REQUIRED)
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  gnss
  nmea_msgs
  roscpp
  std_msgs
  tf
)

catkin_package()

SET(CMAKE_CXX_FLAGS "-O2 -g -Wall ${CMAKE_CXX_FLAGS}")

include_directories(
  ${catkin_INCLUDE_DIRS}
)


add_executable(nmea2tfpose
  nodes/nmea2tfpose/nmea2tfpose_core.cpp
  nodes/nmea2tfpose/nmea2tfpose_node.cpp
)

target_include_directories(nmea2tfpose PRIVATE nodes/nmea2tfpose ${catkin_INCLUDE_DIRS})
target_link_libraries(nmea2tfpose ${catkin_LIBRARIES})
add_dependencies(nmea2tfpose ${catkin_EXPORTED_TARGETS})

install(TARGETS nmea2tfpose
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
  PATTERN ".svn" EXCLUDE
)

