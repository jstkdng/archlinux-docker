FROM archlinux/base

LABEL maintainer="self@2m.lt"

RUN pacman -Syu --needed --noconfirm sudo namcap fakeroot audit grep diffutils

# dependencies for yay
RUN pacman -S --noconfirm git base-devel

RUN useradd --create-home build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER build
WORKDIR /home/build

# install yay which can be used to install AUR dependencies
RUN git clone https://aur.archlinux.org/yay.git
RUN cd yay && makepkg --syncdeps --install --noconfirm
