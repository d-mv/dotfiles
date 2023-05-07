" settings
syntax on
filetype plugin on

set autoindent
set autoread
set backspace=2 " allow backspace over everything
set clipboard=unnamed
set cmdheight=1 ", more space in the neovim command line for displaying messages
set colorcolumn=+0
set complete=.,w,b,u,U,t,i,d
set completeopt=menu,menuone,preview " mostly just for cmp
set conceallevel=0 ", so that `` is visible in markdown files
set cursorline " highlight the current line
set encoding=utf-8
set expandtab " = true, convert tabs to spaces
set fileencoding=utf-8 ", the encoding written to a file
set fillchars=vert:┃ ", split line - for vsplits
set foldlevel=1
set foldlevelstart=99
set foldmethod=syntax ", fold based on indent
set foldnestmax=10 ", --deepest fold is 10 levels
set hidden " switch between buffers without error
set hlsearch " = true, highlight all matches on previous search pattern
set incsearch " highlight while typing search
set ignorecase smartcase
set linebreak " = true, set soft wrapping
set mat=2 ", how many tenths of a second to blink
set nocompatible
set number " set numbered lines
set numberwidth=4 ", set number column width to 2 {default 4}
set path+=** " tab completion for all file-lated tasks
set pumheight=20 ", pop up menu height
set re=0 ", turn off old regex engine
set relativenumber " set relative numbered lines
set scrolloff=5
set selection=exclusive " don't select next line symbol
set shell=$SHELL
set shiftround " round indent to a multiple of 'shiftwidth'
set shiftwidth=2 " the number of spaces inserted for each indentation
set showbreak=↪
set showcmd " show incomplete commands
set showmatch " show matching braces
set showtabline=1 ", always show tabs
set sidescrolloff=8
set smartcase " = true, smart case
set smartindent " = true, make indenting smarter again
set smarttab " = true, tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set so=7 ", set 7 lines to the cursors - when moving vertical
set softtabstop=2 ", edit as if the tabs are 4 characters wide
set splitbelow " = true, force all horizontal splits to go below current window
set splitright " = true, force all vertical splits to go to the right of current window
set tabstop=2 ", insert 2 spaces for a tab
set textwidth=100
set timeoutlen=1000 ", time to wait for a mapped sequence to complete (in milliseconds)
set title " = true, set terminal title
set updatetime=100 ", faster completion (4000ms default)
set wildmenu " display all matching files
set wrap " = true, turn on line wrapping
set wrapmargin=4 ", wrap lines when coming within n characters from side
set noshowmode " we don't need to see things like INSERT anymore

" undo, swap
set noundofile " no undo file
set nobackup nowritebackup
set noswapfile

" status line
set laststatus=2 " show the status line all the time
set statusline=%F%m%r%h%w%=\ %4Y\ %4{&ff}\ %4l,%v\ %4p%%

" cursor
set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" netrw
" https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/

let g:netrw_banner=0 " disable banner
let g:netrw_browser_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_keepdir = 0 " keep the current directory and the browsing directory synced
let g:netrw_winsize = 30
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " hide dotfiles on load
let g:netrw_localcopydircmd = 'cp -r'

nmap <C-0> :Vexplore! %:p:h<CR>
nmap <C-b> :Vexplore!<CR>

hi! link netrwMarkFile Search " highlight marked files same way as search


" remap netrw buttons
function! NetrwMapping()
"  nmap <buffer> H u
"  nmap <buffer> h -^
"  nmap <buffer> l <CR>
"
"  nmap <buffer> . gh
"  nmap <buffer> P <C-w>z
"
"  nmap <buffer> L <CR>:Lexplore<CR>
"  nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction


augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

" enf-of netrw


" key mapping
nmap <silent><leader>s :set hls<CR>
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
nmap <silent> ,bda :bufdo bd<CR> " close all, except current

" movements
nmap <silent> <C-k> Vd2kp " move line up
nmap <silent> <C-j> Vdp " move line down

" snippets
nmap <silent> ,lg :-1read $DOTFILES/vim/snippets/console_import.tsx<CR>1jf)i
nmap <silent> ,rf :.-1read $DOTFILES/vim/snippets/react_function.tsx<CR>2jfCs

" highlight & syntax
" hi Comment gui=italic guifg=#808b96
hi Cursor guibg=white guifg=black
hi Folded guifg=orange
hi Search ctermfg=white ctermbg=red guifg=#444444  guibg=yellow
hi SpellBad guifg=yellow
hi VendorPrefix guifg=#00ffff gui=bold
hi VendorPrefix guifg=red gui=bold
hi VertSplit guifg=#F08080
hi foldBraces gui=bold
hi typescriptType  gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " highlight conflicts

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

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '$DOTFILES/nvim/preview.sh {}']}, <bang>0)


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors " true, -- set term gui colors (most terminals support this)
" endif

" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

