" >>> Syntax
" syntax enable

" hi Comment cterm=italic
" hi Comment gui=italic
" hi Comment gui=italic
" hi Constant gui=bold
" hi LineNr		guifg=#686868	guibg=NONE	gui=NONE
" hi Number		guifg=#907000	guibg=NONE	gui=NONE
" hi PreProc		guifg=#009030	guibg=NONE	gui=NONE
" hi Question		guifg=white	guibg=#d0d090	gui=NONE
" hi Special		guifg=#b4d7fa	guibg=NONE	gui=italic
" hi Statement		guifg=#428af5	guibg=NONE	gui=NONE
" hi StatusLine		guifg=fg	guibg=#a6caf0	gui=NONE
" hi Type		guifg=#0850a0	guibg=NONE
" hi jsAttributeComment cterm=italic
" hi jsAttributeComment gui=italic
" hi jsBlockCommen gui=italic
" hi jsBlockComment cterm=italic
" hi jsComment cterm=italic
" hi jsComment cterm=italic
" hi jsComment gui=italic
" hi jsComment gui=italic
" hi jsLineComment cterm=italic
" hi jsLineComment gui=italic
" hi tsxAttributeComment cterm=italic
" hi tsxAttributeComment gui=italic
" hi tsxBlockCommen gui=italic
" hi tsxBlockComment cterm=italic
" hi tsxComment cterm=italic
" hi tsxComment gui=italic
" hi tsxLineComment cterm=italic
" hi tsxLineComment gui=italic
hi Cursor  guifg=#444444  guibg=#ffffff
hi CursorLine  guibg=#254d57  ctermbg=237
" hi Directory guifg=#F08080  
hi Fixme guifg=#f542b6 gui=bold
hi Folded guifg=orange
" hi ReduxHooksKeywords guifg=#428af5 gui=bold
hi foldBraces gui=bold
" hi Identifier gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline
hi MatchParen	guifg=#444444 	guibg=#37c3e6
hi Search ctermfg=white ctermbg=red guifg=red  guibg=pink
hi SpellBad guifg=yellow
hi Statement cterm=bold
hi Statement gui=bold
hi Todo guifg=#d9f235 gui=bold
" hi Type gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline
" hi VendorPrefix guifg=#00ffff gui=bold
hi VertSplit guifg=#F08080
" hi htmlArg cterm=italic
" hi htmlArg gui=italic
" hi typescriptType  gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline

augroup myTodo
  autocmd!
  autocmd Syntax * syntax match myTodo /\v\_.<(TODO|HELP).*/hs=s+1 containedin=.*Comment
augroup END

augroup myFixme
  autocmd!
  autocmd Syntax * syntax match myFixme /\v\_.<(FIXME).*/hs=s+1 containedin=.*Comment
augroup END

highlight link myTodo Todo
highlight link myFixme Fixme


" Changing the shape of cursor
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
if has("gui_running") " for iTerm
    let &t_SI = "\<Esc>]50;CursorShape=5\x7"
    let &t_SR = "\<Esc>]50;CursorShape=3\x7"
    let &t_EI = "\<Esc>]50;CursorShape=1\x7"
else
    let &t_SI.="\e[6 q" "SI = INSERT mode
    let &t_SR.="\e[4 q" "SR = REPLACE mode
    let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
endif

" set color split line
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
set cc=100 " Show column @ 100



" match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/



