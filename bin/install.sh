#!/bin/bash

set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p ~/bin
ln -f -s $DIR/bringToFront ~/bin && echo 'Installed bringToFront'
ln -f -s $DIR/pwgen_alphanumeric ~/bin && echo 'Installed pwgen_alphanumeric'
ln -f -s $DIR/pwgen_printable ~/bin && echo 'Installed pwgen_printable'

