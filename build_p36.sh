#!/usr/bin/env bash

catkin config -DPYTHON_EXECUTABLE=$(which python) -DPYTHON_INCLUDE_DIR=$(python -c "from sysconfig import get_paths as gp; print(gp()['include'])")
catkin config --install
catkin build cv_bridge
