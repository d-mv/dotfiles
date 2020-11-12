#function zle-line-init zle-keymap-select {
#    case ${KEYMAP} in
#        (vicmd)      PROMPT='%(?.%F{green}v.%F{red}?%?)%f %B%F{240}%1~%f%b :: ' ;;
#        (main|viins) PROMPT='%(?.%F{green}>.%F{red}?%?)%f %B%F{240}%1~%f%b :: ' ;;
#        (*)          PROMPT='%(?.%F{green}>.%F{red}?%?)%f %B%F{240}%1~%f%b :: ' ;;
#    esac
#    zle reset-prompt
#}


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
# precmd() { print -rP "%~" }
precmd() { print -rP "%n @ %~" }
setopt prompt_subst

RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{240}(%b) @ %r%f'
# zstyle ':vcs_info:git:*' formats '%F{240}(%b) ☋ %r%f'
zstyle ':vcs_info:git:*' formats ' %F{240}%b'
#zstyle ':vcs_info:git:*' formats '%F{240}(%b)  %r%f'
zstyle ':vcs_info:*' enable git
