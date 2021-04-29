export XDG_CONFIG_HOME=$HOME/.config
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting history-substring-search autojump terraform poetry zsh-vi-mode aws)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

export N_PREFIX="$HOME/.n/"

test -h "$XDG_CONFIG_HOME/dir_colors" && test -x dircolors && eval $(dircolors $XDG_CONFIG_HOME/dir_colors)

export PATH=$HOME/.n/bin:$HOME/go/bin:$HOME/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$PATH

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export BAT_THEME="Nord"

alias v="nvim"
alias d="docker"
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i --no-clobber"
alias gd="git diff"
alias gs="git status"
alias glo="git log --graph --oneline --all"
alias wttr="curl wttr.in/Dortmund"
alias sudo="sudo "
alias tmux='TERM=screen-256color tmux'
alias Syu="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && brew update && brew upgrade --greedy && brew cleanup"
alias wiki="nvim -c ':VimwikiIndex'"

which direnv && eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
bindkey -v

export PATH="$HOME/.poetry/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
