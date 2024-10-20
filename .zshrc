if [ -z "$TMUX" ]
then
    tmux attach -t default || tmux new -s default
fi

alias ll='ls -al'

alias vim=nvim
set -o vi
export EDITOR='nvim'

eval "$(starship init zsh)"
