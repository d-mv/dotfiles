" search
set path+=**

set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig
set wildignore+=*/build/*
set wildignore+=*/coverage/*
set wildignore+=*/dist/*
set wildignore+=*/node_modules/*
set wildignore+=*/public/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/tmp/*
set wildignore+=tags
" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500
set laststatus=2          " When you go into insert mode, the status line color changes. When you leave insert mode, the status line color changes back."

set rtp+=/usr/local/opt/fzf

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

