# environment variabls
export EDITOR=nvim
export PATH=$PATH:~/bin:~/.local/bin
export SSH_AUTH_SOCK=~/.bitwarden-ssh-agent.sock

# save history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# remove forward slash '/' from wordchars
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# aliases
alias ls='ls --color=auto'
alias update='topgrade -y'

# keybinds
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# theme
eval "$(oh-my-posh init zsh --config 'nordtron')"

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
