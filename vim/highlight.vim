hi Comment gui=italic guifg=#808b96
hi Cursor guibg=white guifg=black

hi Folded guifg=orange
hi Search ctermfg=white ctermbg=red guifg=#444444  guibg=yellow
hi SpellBad guifg=yellow
hi VendorPrefix guifg=#00ffff gui=bold
hi VendorPrefix guifg=red gui=bold
hi VertSplit guifg=#F08080
hi foldBraces gui=bold
hi typescriptType  gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline

" highlight SignColumn guibg=red
" highlight SignColumn ctermbg=red


" TODO  there is something todo
" HELP  there is something
" FIXME  something
" NOTE  some
" OPTIMIZE some
hi Fixme guibg=#f542b6 guifg=#444444 gui=bold
hi Tod guibg=#9ac427 guifg=#444444 gui=bold ctermfg=yellow
hi Note guibg=#f542b6 gui=bold
hi Optimize guifg=#9ac427 gui=bold ctermfg=yellow

match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " highlight conflicts

augroup myNote
  autocmd!
  autocmd Syntax * syntax match myNote /\v\_.<(NOTE)\s/ containedin=.*Comment
augroup END

augroup myFixme
  autocmd!
  autocmd Syntax * syntax match myFixme /\v\_.<(FIXME)\s/ containedin=.*Comment
augroup END

augroup myOptimize
  autocmd!
  autocmd Syntax * syntax match myOptimize /\v\_.<(OPTIMIZE)\s/ containedin=.*Comment
augroup END

augroup myTodo
  autocmd!
  autocmd Syntax * syntax match myTodo /\v\_.<(TODO|HELP)\s/ containedin=.*Comment,vimCommentTitle
  " autocmd Syntax * syntax match myTodo /\v\_.<(TODO|HELP).*/hs=s+1 containedin=.*Comment
augroup END

highlight link myTodo Tod
highlight link myFixme Fixme
highlight link myNote Note
highlight link myOptimize Optimize

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

