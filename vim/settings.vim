set noundofile " no undo file
set autoindent
set autoread
set backspace=indent,eol,start
set nobackup nowritebackup
" set clipboard=unnamedplus ", -- allows neovim to access the system clipboard
set clipboard=unnamed
set textwidth=120
set colorcolumn=+0
set complete=.,w,b,u,U,t,i,d
set ignorecase smartcase
set number " = true, -- set numbered lines
set relativenumber " = true, -- set relative numbered lines
set completeopt=menu,menuone,noselect,noinsert,preview " }, -- mostly just for cmp
set conceallevel=0 ", -- so that `` is visible in markdown files
set cursorline "= true, -- highlight the current line
set encoding=utf-8
set re=0 ", -- turn off old regex engine
set scrolloff=5 ", -- is one of my fav
set selection=exclusive ", -- don't select next line symbol
set shiftround " = true, -- round indent to a multiple of 'shiftwidth'
set shiftwidth=2 ", -- the number of spaces inserted for each indentation
set showbreak=↪
set showcmd " = true, -- show incomplete commands
set showmatch " = true, -- show matching braces
set noshowmode " =false, -- we don't need to see things like -- INSERT -- anymore
set sidescrolloff=8
" set signcolumn " = "yes", -- always show the sign column, otherwise it would shift the text each time
set smartcase " = true, -- smart case
set smartindent " = true, -- make indenting smarter again
set smarttab " = true, -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set so=7 ", -- set 7 lines to the cursors - when moving vertical
set softtabstop=2 ", -- edit as if the tabs are 4 characters wide
set splitbelow " = true, -- force all horizontal splits to go below current window
set splitright " = true, -- force all vertical splits to go to the right of current window
set noswapfile " = false, -- creates a swapfile
set tabstop=2 ", -- insert 2 spaces for a tab
set termguicolors " = true, -- set term gui colors (most terminals support this)
set timeoutlen=1000 ", -- time to wait for a mapped sequence to complete (in milliseconds)
set title " = true, -- set terminal title
set ttyfast " = true, -- faster redrawing
" set undofile " = true, -- enable persistent undo
set updatetime=300 ", -- faster completion (4000ms default)
set wildmenu " = true,
set wrap " = true, -- turn on line wrapping
set wrapmargin=4 ", -- wrap lines when coming within n characters from side
set hlsearch " = true, -- highlight all matches on previous search pattern
set ignorecase " = true,
" set laststatus " = 2, -- show the status line all the time
set linebreak " = true, -- set soft wrapping
set mat=2 ", -- how many tenths of a second to blink
set numberwidth=4 ", -- set number column width to 2 {default 4}
set pumheight=20 ", -- pop up menu height
set cmdheight=1 ", -- more space in the neovim command line for displaying messages
set expandtab " = true, -- convert tabs to spaces
set fileencoding=utf-8 ", -- the encoding written to a file
set fillchars=vert:┃ ", -- split line - for vsplits
set foldlevel=1
set foldlevelstart=99
set foldmethod=syntax ", -- fold based on indent
set foldnestmax=10 ", --deepest fold is 10 levels
set hidden "= true, -- switch between buffers without error
set shell=$SHELL
set showtabline=1 ", -- always show tabs
  " writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  "
" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" lightline
set laststatus=2

" set incommand=nosplit " live update
set incsearch " is about: showing the matches while typing the pattern
