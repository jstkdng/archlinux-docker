#!/bin/bash

#pacman -Syu --needed --noconfirm sudo namcap fakeroot audit grep diffutils
patched_glibc=glibc-linux4-2.33-4-x86_64.pkg.tar.zst
curl -LO https://repo.archlinuxcn.org/x86_64/$patched_glibc
bsdtar -C / -xvf $patched_glibc
pacman -Syu --noconfirm git
