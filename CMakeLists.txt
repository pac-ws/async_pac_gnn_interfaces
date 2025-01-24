cmake_minimum_required(VERSION 3.15)
project(async_pac_gnn_interfaces)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_COLOR_DIAGNOSTIC ON)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	add_compile_options(-Wall -Wextra -Wpedantic -Wunused -Wshadow)
endif()

if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE Release)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)

set(interface_files
	"srv/UpdateFeature.srv"
	"srv/UpdateAggregatedMsg.srv"
	"srv/NamespacesRobots.srv"
	"srv/WorldMap.srv"
  "srv/SystemInfo.srv"
	"msg/AggregatedMsgVector.msg"
	"msg/AggregatedMsg.msg"
	"msg/LayerFeatures.msg"
	"msg/FeatureVector.msg"
	"msg/RobotsIds.msg"
)
rosidl_generate_interfaces(${PROJECT_NAME}
	${interface_files}
	DEPENDENCIES builtin_interfaces std_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
