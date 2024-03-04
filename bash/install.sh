#!/bin/bash

if [[ ! -f ~/.localrc ]]; then
	touch ~/.localrc && echo 'Created an empty .localrc'
fi

if [[ ! -d ~/.config/base16-shell ]]; then
	git clone https://github.com/tinted-theming/base16-shell.git ~/.config/base16-shell && echo 'Cloned base16-shell'
fi
