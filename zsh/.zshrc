export XDG_CONFIG_HOME=$HOME/.config
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git osx zsh-autosuggestions zsh-completions zsh-syntax-highlighting history-substring-search autojump)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
alias vim="nvim"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export N_PREFIX="$HOME/.n/"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:$PWD/.local/bin

alias gs="git status"
alias gd="git diff"
alias d="docker"
alias ms="mpc status"
alias wtf="echo 'I know, right!?'"

export LANG="en_US.UTF-8"
