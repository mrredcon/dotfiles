#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
cp $DIR/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/ && echo 'Installed xfce4-panel.xml'

mkdir -p ~/.config/xfce4/terminal
cp $DIR/terminalrc ~/.config/xfce4/terminal/ && echo 'Installed xfce terminalrc'
