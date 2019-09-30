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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.cargo/env
export PATH="/Users/dmitry/.rbenv/shims/:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR=vim

alias code="/Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code"
alias prj="cd ~/Projects"
alias tedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'
alias lc='colorls -lA --sd'
# Get External IP / local IPs
alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias adog='git log --all --decorate --oneline --graph'
alias vim='vim -u ~/.config/.vimrc'
alias weather='curl wttr.in/TelAviv-Yafo'
alias search='ddgr'
alias news='curl getnews.tech'
# react-native
alias nri='npm run ios'
alias nra='npm run android'

eval "$(rbenv init -)"

fpath=(/usr/local/share/zsh-completions $fpath)


# Homebrew completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

fpath=(~/.zsh/zsh-completions/src $fpath)
fpath+=~/.dotfiles/.zfunc

# versions for iTerm
# iterm2_print_user_vars() {
#   iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
#   iterm2_set_user_var nodeVersion $(node -v)
#   iterm2_set_user_var rustVersion $(cargo --version | awk '{print $2 }')
#   # iterm2_set_user_var rustVersion $(rustup show | awk '/rustc / { print $2 }')
#   iterm2_set_user_var rustChannel $(rustup default | awk '{ print $1 }')
# }


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/Users/dmitry/.zshrc'

# binding keys
bindkey -e
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# vim mode
set -o vi
bindkey -v

autoload -U colors && colors


source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/.iterm2_shell_integration.zsh
# source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme


# Pure prompt settings
PURE_PROMPT_SYMBOL=''
# PURE_PROMPT_SYMBOL=''
# PURE_PROMPT_SYMBOL=' '

autoload -U promptinit; promptinit
prompt purer

plugins=(git github ruby node rust fast-syntax-highlighting zsh-autosuggestions zsh-completions git-open)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

