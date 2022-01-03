vim.cmd [[
hi Fixme guifg=#f542b6 gui=bold
hi Todo guifg=#9ac427 gui=bold ctermfg=yellow

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
]]
