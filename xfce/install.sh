#!/bin/bash
set -e
set -x

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
cp xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
