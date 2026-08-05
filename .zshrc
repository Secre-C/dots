# Variables
export EDITOR=nvim
export PATH=$PATH:~/bin:~/.local/bin:~/mod_tools
export PS3_SDK=/run/media/secrec/easystore/ModsnStuff/P5_Modding_maybe/modding_tools/ps3sdk475_lite
export easystore=/run/media/secrec/easystore
export repos=/mnt/320GB_HDD/Github

# save history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# remove forward slash '/' from wordchars
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# aliases
#alias ls='ls --color=auto'
alias update='topgrade -y --disable jetbrains_toolbox'

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
