FROM	godfox/ros:kinetic-desktop-full-xenial
MAINTAINER	GodFox "zhangliuxian@gmail.com"

COPY keyboard /etc/default/keyboard

ARG DEBIAN_FRONTEND=noninteractive

RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb \
    && dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb \
    && apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub \
    && apt-get update \
    && apt-get install -y cuda-9-0 \
    && rm -rf /var/lib/apt/lists/*

RUN rm -rf keyboard /etc/default/keyboard
