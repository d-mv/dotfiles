nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

nnoremap ,rf :-1read $HOME/.dotfiles/vim/snippets/react_function.tsx<CR>2jfCvc
nnoremap ,rc :-1read $HOME/.dotfiles/vim/snippets/react_class.tsx<CR>2jf>la
nnoremap ,ri :-1read $HOME/.dotfiles/vim/snippets/react_import.tsx<CR>1ja
nnoremap ,si :-1read $HOME/.dotfiles/vim/snippets/styled_import.tsx<CR>1ja
nnoremap ,lg :-1read $HOME/.dotfiles/vim/snippets/console_import.tsx<CR>1jf)i
nnoremap ,m[ a{<Esc>pa}<Esc>
nnoremap ,{ bcw{<Esc>pa}<Space><Esc>
nnoremap ," bcw"<Esc>pa"<Space><Esc>
nnoremap ,( bcw(<Esc>pa)<Space><Esc>
nnoremap ,[ bcw[<Esc>pa]<Space><Esc>
nnoremap ,' bcw'<Esc>pa'<Space><Esc>

autocmd FileType javascript nnoremap gc 0i//<Space><Esc>
autocmd FileType typescript nnoremap gc 0i//<Space><Esc>

command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Gb Gblame
command! Gd Gdiff
command! Ga !git add .

nnoremap <leader>s :w<CR>
inoremap <leader>s <C-c>:w<CR>

" use alt+hjkl to move between split/vsplit panels
noremap ˙ <C-w>h
noremap ∆ <C-w>j
noremap ˚ <C-w>k
noremap ¬ <C-w>l
noremap ¬ <C-w>l
nmap ≥ :vertical resize +5<CR>
nmap ≤ :vertical resize -5<CR>

nmap ¯ :res -5<CR>
nmap ˘ :res +5<CR>

nmap √ :vs<CR>
nmap † :split<CR>

" Jump between hunks
nmap <C-n> <Plug>(GitGutterNextHunk)  " git next
nmap <C-m> <Plug>(GitGutterPrevHunk)  " git previous

" Toggle fold at current position.
nnoremap <Tab> za

" nmap h gh
nmap j gj
nmap k gk
" nmap l gl


" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

map - :NERDTreeFind<CR>
nmap ,f :NERDTreeFind<CR>
map <C-b> :NERDTreeToggle<CR>
" nnoremap <C-b> :CocCommand explorer<CR>

" close all, except current
nmap ,bda :bufdo bd<CR>

" " matchit - <%> jums to other end of selected brackets
" " surround - <cs'"> - change ' to " around current selection
" " surround - <ds"> - remove " around current selection
" " surround - <yss[> - surounds current selection with [
" " textobj-rubyblock - var - selects outer ruby block
" "       vir - selects inner ruby block
" ]]"'"

map <C-d> yyp
map ∂ yyP

map <C-l> :Buffers<CR>
map <C-f> :Rg!<CR>
map <C-p> :GFiles<CR>
map <C-a> :FZF<CR>
map <C-k> Vd2kp
map <C-j> Vdp

"  get highlighting group
" map <C-;> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
" \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
" \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" map <C-m> :VcsJump merge

" turn off keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"   Coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh <Plug>(coc-doHover)

map <C-I> :CocAction<CR>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
