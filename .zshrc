export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.cargo/env
export PATH="/Users/dmitry/.rbenv/shims/:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR=nvim
export REACT_EDITOR=nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# alias code="/Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias prj="cd ~/Projects"
alias tedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'
alias lc='colorls -lA --sd'
alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias adog='git log --all --decorate --oneline --graph'
alias vim='vim -u ~/.config/.vimrc'
alias weather='curl wttr.in/TelAviv-Yafo'
alias weather2='curl http://v2.wttr.in'
alias search='ddgr'
alias news='curl getnews.tech'
# react-native
alias nri='npm run ios'
alias nra='npm run android'
alias gits='git switch $(git branch | fzf)'
alias gitm='git merge $(git branch | fzf)'
alias gitpo='git push origin $(git branch | fzf)'

eval "$(rbenv init -)"

# Homebrew completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh

# source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
# source ~/.zsh/.iterm2_shell_integration.zsh

# versions for iTerm
# iterm2_print_user_vars() {
#   iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
#   iterm2_set_user_var nodeVersion $(node -v)
#   iterm2_set_user_var rustVersion $(cargo --version | awk '{print $2 }')
  # iterm2_set_user_var rustVersion $(rustup show | awk '/rustc / { print $2 }')
  # iterm2_set_user_var rustChannel $(rustup default | awk '{ print $1 }')
# }

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# binding keys
bindkey -e
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# vim mode
set -o vi
bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# eval "$(starship init zsh)"

# Pure prompt settings
# PURE_PROMPT_SYMBOL=''
# PURE_PROMPT_SYMBOL=''
# PURE_PROMPT_SYMBOL=' '

autoload -U colors && colors

autoload -Uz compinit
compinit

autoload -U promptinit; promptinit
prompt purer

