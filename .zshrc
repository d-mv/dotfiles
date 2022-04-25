export EDITOR=nvim
export REACT_EDITOR=nvim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
export GREP_OPTIONS='--color=always'

set -g default-terminal "screen-256color"

source ~/.dotfiles/zsh/paths.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/private.zsh
source ~/.dotfiles/zsh/functions.zsh
source ~/.dotfiles/zsh/path.zsh
# source ~/.dotfiles/zsh/iterm


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
fpath=(~/.daml/zsh $fpath)
fpath=(~/.zsh/completion $fpath)

# # binding keys
bindkey -e
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# vim mode
set -o vi
bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ "$(uname)" = "Darwin" ]; then
  # Set 60 fps key repeat rate
  # See: https://github.com/mathiasbynens/dotfiles/issues/687
  if command -v dry &> /dev/null; then
    dry 0.0166666666667 > /dev/null
  fi
fi


# Completion
autoload -Uz compinit && compinit -i
# compinit -u

# ignore case in autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'

autoload -U colors
colors

# History
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
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

eval "$(fnm env)"
# eval "$(starship init zsh)"
