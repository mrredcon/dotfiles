#!/bin/bash

if [[ $(uname) != "Darwin" ]]; then
	exit
fi

defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder
defaults write -g InitialKeyRepeat 25
defaults write -g KeyRepeat 2

defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.4 && killall Dock
