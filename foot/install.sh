#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p $HOME/.config/foot
ln -f -s $DIR/foot.ini ~/.config/foot/ && echo 'Installed foot.ini'
