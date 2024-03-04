#!/bin/bash
set -e

DIR=$(dirname "$(readlink -f "$0")")

mkdir -p ~/.vim/colors

if [[ ! -d ~/.vim/colors/base16 ]]; then
	git clone https://github.com/tinted-theming/base16-vim.git ~/.vim/colors/base16
	cp ~/.vim/colors/base16/colors/*.vim ~/.vim/colors
fi

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
