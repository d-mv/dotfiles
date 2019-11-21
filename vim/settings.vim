lang en_US.UTF-8
scriptencoding utf-8
"set mouse=a
set autoindent smartindent " Set Proper Tabs
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set clipboard=unnamed
set complete=.,w,b,u,U,t,i,d       " Do lots of scanning on tab completion
set completeopt-=preview           " Do not show preview window, just the menu
set confirm " show confirmation dialogue
set cursorline " Enable highlighting of the current line
set diffopt+=vertical
set diffopt=filler,iwhite          " In diff mode, ignore whitespace changes and align unchanged lines
set directory=~/.config/nvim/swap  " Directory to use for the swap file
set encoding=UTF-8
set expandtab
set hidden           " Don't abandon buffers moved to the background
set hlsearch
set ignorecase
set incsearch
set laststatus=2          " When you go into insert mode, the status line color changes. When you leave insert mode, the status line color changes back."
set lazyredraw
set nocompatible
set noshowmode " not to show --INSERT--
set nowrap
set number " Show line numbers
set path+=**
set ruler
set secure
set selection=exclusive " when selecting with 'g_' don't include symbol from next line
set shell=/bin/zsh " Terminal
set shiftround
set shiftwidth=4
set shortmess+=A " Always edit file, even when swap file is found
set showmatch
set smartcase
set smarttab      " Make <tab> and <backspace> smarter
set spell
set splitbelow
set splitright
set tabstop=2
set termencoding=utf-8
set visualbell
set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig
set wildignore+=*/build/*
set wildignore+=*/coverage/*
set wildignore+=*/dist/*
set wildignore+=*/node_modules/*
set wildignore+=*/public/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/tmp/*
set wildignore+=tags
set wildmenu         " Enhanced completion hints in command line
" Add additional information in popups (VIM 8.0+ only)
" if !has('nvim')
"   set completeopt+=popup
"   set completepopup=height:10,width:60,highlight:Pmenu,border:off
" endif

source ~/.dotfiles/vim/fzf_floating.vim

" autocmd FileType json syntax match Comment +\/\/.\+$+ " to get correct comment highlighting in json

