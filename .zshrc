# environment variabls
export EDITOR=nvim
export PATH=$PATH:~/bin

# aliases
alias ls='ls --color=auto'

# keybinds
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# plugins
eval "$(oh-my-posh init zsh --config 'nordtron')"
