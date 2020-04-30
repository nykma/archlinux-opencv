ARG archlinux_version=latest
FROM archlinux:${archlinux_version}
LABEL maintainer="Nyk Ma <i@nyk.ma>"

RUN pacman -Syyu --noconfirm && \
        pacman -S --noconfirm opencv base-devel && \
        rm -rf /var/cache/pacman/pkg/*

ENV OPENCV_LIB_DIR=/usr/lib OPENCV_INCLUDE_DIR=/usr/include/opencv4
