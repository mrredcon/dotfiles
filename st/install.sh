#!/bin/bash
set -e

# Check if running Arch
if [ ! -f "/etc/arch-release" ]; then
 exit 
fi

mkdir -p ~/AUR/st/ && cd ~/.dotfiles/st/
cp config.h PKGBUILD README.terminfo.rst terminfo.patch ~/AUR/st/
cd ~/AUR/st/
makepkg -si --noconfirm --needed

