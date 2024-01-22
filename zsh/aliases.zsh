alias cargo-watch="systemfd --no-pid -s http::8001 -- cargo watch -x run"
# alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias adog='git log --all --decorate --oneline --graph'
alias vi='vim'
alias v='vim --clean'
alias nv='nvim'
alias nvc='nvim --clean'
alias rn='ranger'
alias tmux_remote='tmux new -s remote -n home'
alias tr='tmux a -t remote'
# alias code='/usr/local/bin/code .'
alias vimswaps='cd ~/.local/share/nvim/swap'
alias code='/Applications/Code\ -\ Insiders.app/Contents/Resources/app/bin/code .'
# alias code='/Applications/Code.app/Contents/Resources/app/bin/code .'

alias zed='/Applications/Zed.app/Contents/MacOS/zed .'
alias w='curl wttr.in/TelAviv-Yafo'
alias w2='curl http://v2.wttr.in/Ramat_Gan'
alias w3='curl http://v3.wttr.in/TelAviv-Yafo.sxl'
alias search='ddgr'
alias news='curl getnews.tech'
alias nri='npm run ios'     # for React Native
alias nra='npm run android' # for React Native
alias yt='yarn test'
alias yss='yarn storybook:start'
alias ys='yarn start'
alias yd='yarn dev'
alias yb='yarn build'
alias yl='yarn lint'
alias pnd='pnpm run dev'
alias pns='pnpm run start'
alias pnb='pnpm run build'
alias pnl='pnpm run lint'
alias pnt='pnpm run test'
alias pnc='pnl && pnt && pnb'
alias nd='npm run dev'
alias ndj='nodemon src/main.js'
alias ns='npm run start'
alias nsj='node src/main.js'
alias nb='npm run build'
alias nl='npm run lint'
alias nss='npm run storybook'
alias nt='npm run test'
alias nc='nl && nt && nb'
alias gits='git switch $(git branch | fzf)'
alias gitm='git merge $(git branch | fzf)'
alias gitpo='git push origin $(git branch | fzf)'
alias gitupd='git add . && git commit -m "Update"'
alias gitupdpush='git add . && git commit -m "Update" && git push -u origin HEAD'
alias gs='git status'
alias gst='git status -sb'
alias gl='git log --pretty=format:"%h - %an, %ar : %s"'
alias gcoms="git log origin/master..HEAD --no-merges --pretty=format:'- %s' "
alias gpp='git pull && git push'
alias xf='exa --long --header --git'
alias xfa='exa -a --long --header --git'
alias xl='exa -1'
alias xla='exa -1a'
alias xg='exa --grid'
alias ..='cd ..'
alias killtouch='killall ControlStrip'
alias d1='cd -'
alias d2='cd -2'
alias d3='cd -3'
alias d4='cd -4'
alias d5='cd -5'
alias d6='cd -6'
alias d7='cd -7'
alias d8='cd -8'
alias d9='cd -9'
alias tpg='cd ~/code/playgrounds/ts'
alias rts='cd ~/code/rts'
alias ei='cd ~/code/ei-nucleus'
alias gsw='git switch $(git branch | fzf)'
alias kod='cd ~/code'
