export XDG_CONFIG_HOME=$HOME/.config
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting history-substring-search autojump terraform)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

export N_PREFIX="$HOME/.n/"

test -h "$XDG_CONFIG_HOME/dir_colors" && test -x dircolors && eval $(dircolors $XDG_CONFIG_HOME/dir_colors)

export PATH=$HOME/go/bin:$HOME/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$PATH

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

alias v="nvim"
alias d="docker"
alias mv="mv --no-clobber"
alias gd="git diff"
alias gs="git status"
alias wttr="http -p b get wttr.in/Dortmund | head -n 37 | tail -n 35"
alias sudo="sudo "
alias tmux='TERM=screen-256color tmux'
alias Syu="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && brew update && brew upgrade && brew cleanup"

eval "$(starship init zsh)"
