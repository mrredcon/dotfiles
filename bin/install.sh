#!/bin/bash

set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p ~/bin
ln -s $DIR/bringToFront ~/bin && echo 'Installed bringToFront'
