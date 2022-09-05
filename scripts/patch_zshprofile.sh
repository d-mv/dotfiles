cat << EOT>>/etc/zsh/zprofile
export EDITOR=nvim
export REACT_EDITOR=nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export GREP_OPTIONS='--color=always'
export TERM=screen-256color-bce

export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=/root/.fnm:$PATH



alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias adog='git log --all --decorate --oneline --graph'
alias nv='nvim'
alias nvc='nvim --clean'
alias rn='ranger'
alias tmux_remote='tmux new -s remote -n home'
alias tr='tmux a -t remote'
alias nri='npm run ios' # for React Native
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
alias gsw='git switch $(git branch | fzf)'


kill-by-port() 
{ kill "$(lsof -i ":$1" | tail -n 1 | awk '{ print $2 }')";
 }

fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -maxdepth 3 -prune -o -type d -print 2> /dev/null | grep -v 'node_modules' | grep -v 'vendor' | fzf +m) &&
  cd "$dir"
}


function zle-line-init zle-keymap-select {
    case ${KEYMAP} in
        (vicmd)      PROMPT='%(?.%F{green}v.%F{red}?%?)%f :: ' ;;
        (main|viins) PROMPT='%(?.%F{green}>.%F{red}?%?)%f :: ' ;;
        (*)          PROMPT='%(?.%F{green}>.%F{red}?%?)%f :: ' ;;
    esac
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
precmd() { print -rP "%F{240}%~" }
# precmd() { print -rP "%n @ %~" }
setopt prompt_subst

RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '§ %F{240}%b'
zstyle ':vcs_info:git:*' formats '%F{240} %b'
zstyle ':vcs_info:*' enable git

source ~/.dotfiles/zsh/paths.zsh
source ~/.dotfiles/zsh/private.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
fpath=(~/.zsh/completion $fpath)

bindkey -e
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
set -o vi
bindkey -v

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fnm env --shell=bash)"

autoload -Uz compinit && compinit -i

# ignore case in autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'

autoload -U colors
colors

# History
export HISTSIZE=100000
# export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
# Options
setopt AUTO_CD                 # [default] .. is shortcut for cd .. (etc)
setopt AUTO_PUSHD              # [default] cd automatically pushes old dir onto dir stack
setopt AUTO_RESUME             # allow simple commands to resume backgrounded jobs
setopt NO_FLOW_CONTROL         # disable start (C-s) and stop (C-q) characters
setopt NO_HIST_IGNORE_ALL_DUPS # don't filter non-contiguous duplicates from history
setopt HIST_FIND_NO_DUPS       # don't show dupes when searching
setopt HIST_IGNORE_DUPS        # do filter contiguous duplicates from history
setopt LIST_PACKED             # make completion lists more densely packed
setopt MENU_COMPLETE           # auto-insert first possible ambiguous completion

# Plug-ins
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=59'
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# https://superuser.com/a/1494647/322531
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
HISTCMD_LOCAL=0

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
EOT
