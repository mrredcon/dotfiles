#!/bin/bash
set -e

# Check if running Arch
if [ ! -f "/etc/arch-release" ]; then
 exit 
fi

# grml config and xdotool
sudo pacman -S xdotool --needed --noconfirm

