#FROM	ros:kinetic
FROM	osrf/ros:kinetic-desktop-xenial
MAINTAINER	GodFox "zhangliuxian@gmail.com"

COPY keyboard /etc/default/keyboard

RUN apt-get update && apt-get install -y \
    apt-utils \
    ros-kinetic-desktop-full \
    python-catkin-tools \
    curl \
    expect \
    wget \
    ca-certificates \
    ros-kinetic-pcl-ros \
    ros-kinetic-pcl-conversions \
    vim \
    sudo \
    keyboard-configuration \
    ssh \
    && rm -rf /var/lib/apt/lists/*
