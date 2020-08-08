ARG archlinux_version=20200706
FROM archlinux:${archlinux_version}
LABEL maintainer="Nyk Ma <i@nyk.ma>"

RUN echo 'Server = https://archive.archlinux.org/repos/2020/07/27/$repo/os/$arch' > /etc/pacman.d/mirrorlist && \
        pacman -Syyu --noconfirm && \
        pacman -S --noconfirm opencv && \
        rm -rf /var/cache/pacman/pkg/*

ENV OPENCV_LIB_DIR=/usr/lib OPENCV_INCLUDE_DIR=/usr/include/opencv4
