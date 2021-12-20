filetype plugin indent on
filetype plugin on
lang en_US.UTF-8
scriptencoding utf-8
syntax enable

" set cmdheight=1 " command bar height
" set completeopt-=preview
" set confirm
" set expandtab
" set wildmenu " enhanced command line completion
" set wildmode=list:longest " complete files like a shell
" set wildmode=longest,list,full
" change the direction of new splits
" set splitbelow
" set splitright
" set autoindent smartindent " Set Proper Tabs
" set autoread " re-read changed files
" set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
" set cc=120 " split line - show column @ 100
" set clipboard=unnamed
" set complete=.,w,b,u,U,t,i,d
" set completeopt=menuone,noinsert,noselect
" set cursorline
set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
set encoding=UTF-8
set fillchars=vert:┃ " split line - for vsplits
set fillchars+=fold:· " split line - for folds
set foldlevel=1
set foldlevelstart=99
set foldmethod=indent " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set grepprg='rg'
set hlsearch " highlight search
set incsearch " highlight while typing
set hidden " switch between buffers without error
set laststatus=2 " show the status line all the time
set lazyredraw            " Redraw only when we need to
set linebreak " set soft wrapping
set mat=2 " how many tenths of a second to blink
set mps+=<:> " show matching brackes
set mps+={:} " show matching brackes
set mps+=[:] " show matching brackes
set mps+=(:) " show matching brackes
set nocompatible
set noerrorbells
set nofoldenable " don't fold by default
set noshowmode " not to show --INSERT--
" set number
set re=0 " turn off old regex engine 
" set relativenumber
" set scrolloff=5
set selection=exclusive  " Убирает выделение символа конца строки
set shell=$SHELL
set shiftround " round indent to a multiple of 'shiftwidth'
" set shiftwidth=2 " number of spaces to use for indent and unindent
" set shortmess+=c
set showbreak=↪
set showcmd " show incomplete commands
set showmatch " show matching braces
set signcolumn=yes
" set smartindent
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set so=7 " set 7 lines to the cursors - when moving vertical
set softtabstop=2 " edit as if the tabs are 4 characters wide
" set tabstop=2 " the visible width of tabs
set termencoding=utf-8
set termguicolors
set title " set terminal title
set ttyfast " faster redrawing
set updatetime=250
set wildmenu                                
set wrap " turn on line wrapping
set wrapmargin=4 " wrap lines when coming within n characters from side

" statusline
" set statusline=%=\ %f\ %m
