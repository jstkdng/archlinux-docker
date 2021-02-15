FROM archlinux:base-devel

LABEL maintainer="jk@vin.ovh"

# initial pacman setup
ADD https://raw.githubusercontent.com/jstkdng/archlinux-docker/master/pacman_setup.sh /tmp/pacman_setup.sh
RUN bash /tmp/pacman_setup.sh

# create build user
RUN useradd --create-home build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# build yay
ADD https://raw.githubusercontent.com/jstkdng/archlinux-docker/master/build_yay.sh /tmp/build_yay.sh
RUN sudo -u build -H bash -c /tmp/build_yay.sh
