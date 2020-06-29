export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/Users/dmitry/.nvm/versions/node/v12.16.2/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.cargo/env
export PATH="/Users/dmitry/.rbenv/shims/:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
source $HOME/.cargo/env

export EDITOR=vim
export REACT_EDITOR=vim

export NVIM_TUI_ENABLE_TRUE_COLOR=1
export GREP_OPTIONS='--color=always'
set -g default-terminal "screen-256color"

HISTFILE=~/.histfile
HISTSIZE=99999
SAVEHIST=99999
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

source ~/.dotfiles/zsh/aliases
source ~/.dotfiles/zsh/private
source ~/.dotfiles/zsh/functions
# source ~/.dotfiles/zsh/path
# source ~/.dotfiles/zsh/iterm

# eval "$(rbenv init -)"

# Homebrew completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh

# binding keys
bindkey -e
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# vim mode
set -o vi
bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ignore case in autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'


# autoload -U colors && colors

# test -r "~/.dotfiles/.dir_colors" && eval $(dircolors ~/.dotfiles/.dir_colors)

autoload -Uz compinit
compinit

autoload -U promptinit; promptinit
prompt pure

# eval "$(starship init zsh)"
