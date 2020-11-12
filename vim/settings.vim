filetype plugin indent on
filetype plugin on
set nocompatible
syntax enable
set noerrorbells
set cursorline
" set confirm
set hidden " switch between buffers without error
set number
set relativenumber
set complete=.,w,b,u,U,t,i,d
" set completeopt-=preview
set completeopt=menuone,noinsert
set autoindent smartindent " Set Proper Tabs
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set clipboard=unnamed
set scrolloff=5
" set expandtab
set smarttab
set smartindent
set backspace=indent,eol,start  " При нажатии backspace в начале строки, переходит на предыдущую
set selection=exclusive  " Убирает выделение символа конца строки
set noshowmode " not to show --INSERT--

set wrap " turn on line wrapping
set wrapmargin=4 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=↪
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
set laststatus=2 " show the status line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
" set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
" set wildmode=list:longest " complete files like a shell
set shell=$SHELL
" set cmdheight=1 " command bar height
set title " set terminal title
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink
set updatetime=300
set signcolumn=yes
set shortmess+=c

" Tab control
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" code folding settings
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'


" set highlight to 1000 ms
" if !has('nvim')
" endif

set wildmenu                                
" set wildmode=longest,list,full

" encoding
lang en_US.UTF-8
set encoding=UTF-8
scriptencoding utf-8
set termencoding=utf-8

set re=0 " turn off old regex engine 
