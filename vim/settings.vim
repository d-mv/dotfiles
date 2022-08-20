set nocompatible
syntax on
filetype plugin on
" finding files
set autoindent
set autoread
set backspace=2 " allow backspace over everything
set clipboard=unnamed
set colorcolumn=+0
set complete=.,w,b,u,U,t,i,d
set completeopt=menu,menuone,preview,popup " mostly just for cmp
set conceallevel=0 ", so that `` is visible in markdown files
set cursorline " highlight the current line
set encoding=utf-8
set hidden " switch between buffers without error
set ignorecase smartcase
set number " set numbered lines
set path+=** " tab completion for all file-lated tasks
set re=0 ", turn off old regex engine
set relativenumber " set relative numbered lines
set scrolloff=5 "
set selection=exclusive " don't select next line symbol
set shiftround " round indent to a multiple of 'shiftwidth'
set shiftwidth=2 " the number of spaces inserted for each indentation
set showbreak=↪
set showcmd " show incomplete commands
set showmatch " show matching braces
set sidescrolloff=8
set textwidth=100
set wildmenu " display all matching files
" set noshowmode " we don't need to see things like -- INSERT -- anymore
" undo, swap
set noundofile " no undo file
set nobackup nowritebackup
set noswapfile


" status line
set laststatus=2
set statusline=%F%m%r%h%w%=\ %4Y\ %4{&ff}\ %4l,%v\ %4p%%
" cursor
set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" netrw
let g:netrw_banner=0 " disable banner
let g:netrw_browser_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" key mapping
map Q gq " don't use Ex mode, use Q for formatting
nmap <silent><leader>l :ls<CR>
" nmap <silent><C-b> :edit .<CR> " open netrw
nmap <C-l> :b<Space>
nmap <C-p> :find<Space>
" use alt+hjkl to move between split/vsplit panels
nmap <silent> ˙ <C-w>h
nmap <silent> ∆ <C-w>j
nmap <silent> ˚ <C-w>k
nmap <silent> ¬ <C-w>l
" resize
nmap <silent> ≥ :vertical resize +5<CR>
nmap <silent> ≤ :vertical resize -5<CR>
nmap <silent> ¯  :res -5<CR>
nmap <silent> ˘ :res +5<CR>
nmap <silent> √ :vs<CR>
nmap <silent> † :split<CR>
" surround
vmap <silent><leader>" c"<Esc>pi<Right>"<Esc><Right>
vmap <silent><leader>' c'<Esc>pi<Right>'<Esc><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
vmap <silent><leader>[ c[<Esc>pi<Right>]<Esc><Right>
vmap <silent><leader>{ c{<Esc>pi<Right>}<Esc><Right>
vmap <silent><leader>` c`<Esc>pi<Right>`<Esc><Right><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
" disable
nmap <silent> <Up> <NOP>
nmap <silent> <Down> <NOP>
nmap <silent> <Left> <NOP>
nmap <silent> <Right> <NOP>
" bind errored combinations
command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Wqa wqa
" call terminal commands
command! Ga !git add .
" file management
nmap <silent> ,bda :bufdo bd<CR> " -- close all, except current
" movements
nmap <silent> <C-k> Vd2kp " move line up
nmap <silent> <C-j> Vdp " move line down
" snippets
nmap <silent> ,lg :-1read $HOME/.dotfiles/nvim/snippets/console_import.tsx<CR>1jf)i
nmap <silent> ,rf :.-1read ~/.dotfiles/nvim/snippets/react_function.tsx<CR>2jfCs





nmap <silent> <C-d> :Bdelete<CR>
nmap <silent> ,f :NERDTreeFind<CR>
nmap <silent> ,r :NERDTreeRefresh<CR>
nmap <silent> <C-b> :NERDTreeToggle<CR>
nmap <silent> ,bl :Git blame<CR>
nmap <silent> ,gf :Gvdiffsplit<CR>


