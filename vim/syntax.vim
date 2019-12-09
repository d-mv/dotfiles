" >>> Syntax
syntax enable

hi Identifier gui=bold
hi Identifier cterm=bold
hi Statement gui=bold
hi Statement cterm=bold
hi htmlArg gui=italic
hi htmlArg cterm=italic
hi Comment gui=italic
hi Comment cterm=italic
hi tsxAttributeComment cterm=italic
hi tsxAttributeComment gui=italic
hi tsxBlockComment cterm=italic
hi ttsxBlockCommen gui=italic
hi tsxLineComment cterm=italic
hi tsxLineComment gui=italic
hi tsxComment cterm=italic
hi tsxComment gui=italic
hi jsComment cterm=italic
hi jsComment gui=italic
hi Type    gui=italic
hi Type    cterm=italic
hi Folded guifg=yellow guibg=NONE ctermfg=yellow ctermbg=NONE
hi Search ctermfg=white ctermbg=red guifg=white  guibg=Red
hi Folded guifg=orange            guibg=black
hi SpellBad ctermbg=yellow
hi MatchParen	guifg=#444444 	guibg=#37c3e6
hi VendorPrefix guifg=#00ffff gui=bold

if has ('nvim')
    hi CursorLine  guifg=#ffffff guibg=#254d57 gui=underline ctermfg=22 ctermbg=10 cterm=underline
    hi Cursor  guifg=#444444  guibg=#ffffff
else
    hi CursorLine gui=underline cterm=underline
    hi Cursor  guifg=#444444  guibg=#ffffff
endif

" Changing the shape of cursor
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
if has("gui_running") " for iTerm
    let &t_SI = "\<Esc>]50;CursorShape=6\x7"
    let &t_SR = "\<Esc>]50;CursorShape=4\x7"
    let &t_EI = "\<Esc>]50;CursorShape=2\x7"
else
    let &t_SI.="\e[6 q" "SI = INSERT mode
    let &t_SR.="\e[4 q" "SR = REPLACE mode
    let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
endif

" set color split line
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds

if has(!"gui_running") " for iTerm
    hi VertSplit guifg=#F08080
endif

" Directory color
hi Directory guifg=#F08080

match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
