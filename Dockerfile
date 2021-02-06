FROM archlinux:base-devel

LABEL maintainer="jk@vin.ovh"

ADD https://raw.githubusercontent.com/jstkdng/archlinux-docker/master/pacman_setup.sh /tmp/pacman_setup.sh

RUN bash /tmp/pacman_setup.sh

RUN useradd --create-home build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#COPY build_yay.sh /tmp/build_yay.sh
#RUN sudo -u build -H bash -c /tmp/build_yay.sh
