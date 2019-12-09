" >>>>> Mappings for Basic version
map <C-b> :NERDTreeToggle<CR>
map <C-O> :Buffers<CR>
map <C-d> yyp
map <C-p> :FZF<CR>
map <C-F> :Ack
map <C-i> :NERDTreeFind<CR>
nmap ,f :NERDTreeFind<CR>
command! Gb Gblame
command! Gd Gdiff
" map <C-g-d> :Gblame<CR>
" turn off keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
command! Q q " Bind :Q to :q
command! Qall qall
command! W w
