#!/bin/bash

pacman -Syu --needed --noconfirm sudo namcap fakeroot audit grep diffutils
pacman -S --noconfirm git base-devel
