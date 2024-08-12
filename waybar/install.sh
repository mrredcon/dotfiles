#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p $HOME/.config/waybar
ln -f -s $DIR/config.jsonc ~/.config/waybar/ && echo "Installed waybar's config.jsonc"
