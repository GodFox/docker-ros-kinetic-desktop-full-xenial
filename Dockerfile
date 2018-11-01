FROM ros:kinetic-ros-base-xenial

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-desktop-full \
    ros-kinetic-perception \
    ros-kinetic-pcl-conversions \
    python-catkin-tools \
    curl \
    linux-headers-$(uname -r) \
    wget \
    && wget --no-check-certificate https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb \
    && dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb \
    || curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub \
    && apt-key add 7fa2af80.pub \
    && apt-get update \
    && apt-get install -y cuda \
    && rm -rf /var/lib/apt/lists/*
