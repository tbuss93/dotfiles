  export ZSH=/home/tb/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export VISUAL='vim'
alias edit="atom"
alias wetter="curl http://wttr.in/Dortmund"
eval $(thefuck --alias)
function gitlab-ci-validate(){
  DATA=$(jq.node -r js-yaml -x 'jsYaml.safeLoad | thru(x => (JSON.stringify({content: JSON.stringify(x)})))' < .gitlab-ci.yml)
  curl -s --header "Content-Type: application/json" https://gitlab.com/api/v4/ci/lint --data $DATA | jq.node
}
