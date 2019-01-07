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
    && rm -rf /var/lib/apt/lists/*

#RUN wget --no-check-certificate -e https_proxy=http://127.0.0.1:3128 https://developer.nvidia.com/compute/cuda/8.0/Prod2/cluster_management/cuda_cluster_pkgs_8.0.61_ubuntu1604.tar-gz \
#    && tar -xf cuda_cluster_pkgs_8.0.61_ubuntu1604.tar-gz \
#    && rm -rf /var/lib/apt/lists/*

ARG DEBIAN_FRONTEND=noninteractive

RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb \
    && dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb \
    && apt-key adv --keyserver-options --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub \
    && apt-get update \
    && apt-get install -y cuda-9-0 \
    && rm -rf /var/lib/apt/lists/*


