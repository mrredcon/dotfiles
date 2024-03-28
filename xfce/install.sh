#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

clock_path=$(xfconf-query -c xfce4-panel -lv | grep clock | awk '{print $1}')
xfconf-query -c xfce4-panel --create -t 'string' -p "$clock_path/digital-time-format" -s '%A %m/%d, %I:%M %p'
xfconf-query -c xfce4-panel --create -t 'uint' -p "$clock_path/digital-layout" -s '3'
xfconf-query -c xfce4-panel --create -t 'string' -p "$clock_path/digital-time-font" -s 'Sans 10'
echo 'Configured xfce panel clock'

xfconf-query -c xfce4-keyboard-shortcuts --create -p '/commands/custom/<Alt>backslash' -s "$HOME/bin/bringToFront xfce4-terminal" -t 'string' && echo 'Added bringToFront shortcut'

mkdir -p ~/.config/xfce4/terminal
ln -f -s $DIR/terminalrc ~/.config/xfce4/terminal/ && echo 'Installed xfce terminalrc'
