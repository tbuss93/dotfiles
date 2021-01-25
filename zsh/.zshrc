export XDG_CONFIG_HOME=$HOME/.config
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting history-substring-search autojump)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export N_PREFIX="$HOME/.n/"

export PATH=$HOME/go/bin:$HOME/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$PATH
export BAT_THEME="Nord"

alias cat="bat"
alias d="docker"
alias gd="git diff"
alias gs="git status"
alias ls="exa -Fbhg --git --group-directories-first"
alias rm="trash-put"
alias wttr="http -p b get wttr.in/Dortmund | head -n 37 | tail -n 35"
alias vim="nvim"
alias tmux='TERM=screen-256color tmux'

eval "$(starship init zsh)"
