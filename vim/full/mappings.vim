" >>> Mapping buttons
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

map <C-i> :NERDTreeFind<CR>
nmap ,f :NERDTreeFind<CR>
command! Gb Gblame
command! Gd Gdiff
" " matchit - <%> jums to other end of selected brackets
" " surround - <cs'"> - change ' to " around current selection
" " surround - <ds"> - remove " around current selection
" " surround - <yss[> - surounds current selection with [
" " textobj-rubyblock - var - selects outer ruby block
" "       vir - selects inner ruby block
" ]]"'"
" "
map <C-b> :NERDTreeToggle<CR>
map <C-O> :Buffers<CR>
map <C-d> yyp
map <C-D> :ALEDetail<CR>
map <C-p> :GFiles<CR>
map <C-a> :FZF<CR>
map <C-F> :Ack 
map <C-I> :CocAction<CR>

command! Q q " Bind :Q to :q
command! Qall qall
command! W w

" turn off keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>

" use tab
" imap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
