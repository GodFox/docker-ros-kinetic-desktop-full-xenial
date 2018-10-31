FROM ros:kinetic-ros-base-xenial

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-desktop-full \
    ros-kinetic-perception \
    ros-kinetic-pcl-conversions \
    python-catkin-tools \
    curl \
    && rm -rf /var/lib/apt/lists/*
