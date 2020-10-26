#!/bin/bash
colcon build --packages-up-to rosidl_typesupport_zenoh_c --packages-ignore zenoh_vendor --metas src $@
colcon build --packages-up-to rosidl_typesupport_zenoh_cpp --packages-ignore zenoh_vendor --metas src $@

set +o nounset
. /opt/ros/$ROS_DISTRO/setup.bash
. install/local_setup.bash
set -o nounset

colcon build --packages-ignore zenoh_vendor --metas src $@
