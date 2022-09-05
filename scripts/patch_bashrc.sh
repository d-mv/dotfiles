cat <<EOT >> /etc/bash.bashrc
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
alias xfa='exa -a --long --header --git'
alias xl='exa -1'
alias xla='exa -1a'
alias xg='exa --grid'
alias ..='cd ..'
alias gsw='git checkout -b $(git branch | fzf)'
alias gs='git status'
set -o vi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=/root/.fnm:$PATH
eval "$(fnm env --shell=bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
EOT
