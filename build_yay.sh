#!/bin/bash

cd /home/build

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --syncdeps --install --noconfirm
cd /home/build

rm -rf yay
