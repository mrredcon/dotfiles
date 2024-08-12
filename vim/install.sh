#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p ~/.vim/colors
ln -s "$DIR/solarized.vim" ~/.vim/colors && echo 'Installed solarized vim colorscheme'

# Download vim-fakeclip so we can copy/paste in Wayland
mkdir -p ~/.vim/pack/vendor/start
git clone --depth 1 https://github.com/kana/vim-fakeclip ~/.vim/pack/vendor/start/fakeclip

# Check if running Arch
if [ ! -f "/etc/arch-release" ]; then
 exit 
fi

# Nerdtree shows file tree
sudo pacman -S vim-nerdtree --needed --noconfirm

# YouCompleteMe from the AUR
mkdir -p $HOME/AUR
[ ! -d "$HOME/AUR/vim-youcompleteme-git" ] && git clone https://aur.archlinux.org/vim-youcompleteme-git.git ~/AUR/vim-youcompleteme-git

cd ~/AUR/vim-youcompleteme-git
makepkg -si --needed --noconfirm


