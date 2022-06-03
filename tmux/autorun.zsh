if [ -z "$TMUX" ] && [ -n "${DISPLAY}" ]
then
	    tmux attach || tmux new
fi

