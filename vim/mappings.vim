nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

nnoremap ,rf :-1read $HOME/.dotfiles/vim/snippets/react_function.tsx<CR>2jf>la
nnoremap ,rc :-1read $HOME/.dotfiles/vim/snippets/react_class.tsx<CR>2jf>la
nnoremap ,ri :-1read $HOME/.dotfiles/vim/snippets/react_import.tsx<CR>1ja
nnoremap ,si :-1read $HOME/.dotfiles/vim/snippets/styled_import.tsx<CR>1ja
nnoremap ,m[ a{<Esc>pa}<Esc>
nnoremap ,{ bcw{<Esc>pa}<Space><Esc>
nnoremap ," bcw"<Esc>pa"<Space><Esc>
nnoremap ,( bcw(<Esc>pa)<Space><Esc>
nnoremap ,[ bcw[<Esc>pa]<Space><Esc>
nnoremap ,' bcw'<Esc>pa'<Space><Esc>

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap clg  <Esc>ciwconsole.log()<Esc>i

autocmd FileType vim inoremap < <><Esc>i
autocmd FileType vim inoremap " "<Space><Space>
autocmd FileType vim nnoremap gc 0i"<Space><Esc>$
autocmd FileType vim nnoremap gcu F"vlc<Esc>

autocmd FileType javascript nnoremap gc 0i//<Space><Esc>
autocmd FileType typescript nnoremap gc 0i//<Space><Esc>

command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Gb Gblame
command! Gd Gdiff


" map <C-i> :NERDTreeFind<CR>
" nmap ,f :NERDTreeFind<CR>
nmap ,bda :bufdo bd<CR>


" " matchit - <%> jums to other end of selected brackets
" " surround - <cs'"> - change ' to " around current selection
" " surround - <ds"> - remove " around current selection
" " surround - <yss[> - surounds current selection with [
" " textobj-rubyblock - var - selects outer ruby block
" "       vir - selects inner ruby block
" ]]"'"
" "
" map <C-x> :NERDTreeToggle<CR>
map <C-d> yyp
map <A-d> yyP
" map <C-o> :ls<CR>
map <C-o> :Buffers<CR>
" map <C-p> :find
map <C-p> :GFiles<CR>
map <C-a> :FZF<CR>
map <C-x> :edit .<CR>
map <C-F> :Ack 
map <C-k> Vd2kp
map <C-j> Vdp
map <C-l> o<CR><CR><Esc>ki

" turn off keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

