FROM archlinux/base

LABEL maintainer="jk@vin.ovh"

RUN pacman -Syu --needed --noconfirm sudo namcap fakeroot audit grep diffutils

# dependencies for yay
RUN pacman -S --noconfirm git base-devel

RUN useradd --create-home build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY build_yay.sh /tmp/build_yay.sh
RUN sudo -u build -H bash -c /tmp/build_yay.sh
