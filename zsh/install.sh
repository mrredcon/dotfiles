#!/bin/bash
set -e

# Check if running Arch
if [ ! -f "/etc/arch-release" ]; then
 exit 
fi

# grml config
sudo pacman -S grml-zsh-config --needed --noconfirm

