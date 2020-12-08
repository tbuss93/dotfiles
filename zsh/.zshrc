export XDG_CONFIG_HOME=$HOME/.config
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting history-substring-search autojump)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
alias vim="nvim"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export N_PREFIX="$HOME/.n/"

export PATH=$PATH:$PWD/.local/bin

alias gs="git status"
alias gd="git diff"
alias d="docker"
alias ms="mpc status"
alias wtf="echo 'I know, right!?'"

eval "$(starship init zsh)"
