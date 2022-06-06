#!/bin/bash
set -e

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


