
call plug#begin('~/.vim/plugged')

source ~/.dotfiles/vim/theme.vim " add style
source ~/.dotfiles/vim/nerdtree.vim " add and setup NERDTree
" languages
source ~/.dotfiles/vim/typescript.vim " add and setup TypeScript
source ~/.dotfiles/vim/javascript.vim " add and setup JavaScript
source ~/.dotfiles/vim/ruby.vim " add and setup Ruby and Rails

" React
Plug 'mlaursen/vim-react-snippets'
Plug 'tellijo/vim-react-native-snippets'

" Styled/CSS/SCSS
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'ap/vim-css-color'

" others
Plug 'jparise/vim-graphql'
Plug 'othree/html5.vim'
Plug 'tpope/vim-dotenv'

" colors
Plug 'gorodinskiy/vim-coloresque'



" features
Plug '/usr/local/opt/fzf'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'junegunn/gv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'rhysd/vim-grammarous'
Plug 'jbgutierrez/vim-better-comments'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'Valloric/MatchTagAlways'
Plug 'Shougo/neoinclude.vim'

" view/layout
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'

" -= disabled =-
Plug 'ryanoasis/vim-devicons'

call plug#end()

source ~/.dotfiles/vim/style.vim " setup style
source ~/.dotfiles/vim/syntax.vim " setup syntax
source ~/.dotfiles/vim/mappings.vim " mapping buttons

let g:indentLine_color_term = 239
" >>> Other setup
set nocompatible
filetype plugin on
set noshowmode " not to show --INSERT--

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" >>> Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set autoindent smartindent
set smarttab      " Make <tab> and <backspace> smarter
set tabstop=2
set expandtab

" Enable highlighting of the current line
set cursorline

" Terminal
set shell=/bin/zsh

set wildmenu

" Search settings
set path+=**
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']


" Misc
set secure
set lazyredraw
set splitbelow
set splitright
set diffopt+=vertical
set shell=/bin/zsh
set clipboard=unnamed
filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
set laststatus=2          " When you go into insert mode, the status line color changes. When you leave insert mode, the status line color changes back."


" Always edit file, even when swap file is found
set shortmess+=A
set hidden           " Don't abandon buffers moved to the background
set wildmenu         " Enhanced completion hints in command line
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set complete=.,w,b,u,U,t,i,d       " Do lots of scanning on tab completion
set completeopt-=preview           " Do not show preview window, just the menu
set directory=~/.config/nvim/swap  " Directory to use for the swap file
set diffopt=filler,iwhite          " In diff mode, ignore whitespace changes and align unchanged lines
set nowrap
set visualbell
"set mouse=a

" Relative line numbers
set norelativenumber
autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

" Indentation and tabbing
set autoindent smartindent
set smarttab      " Make <tab> and <backspace> smarter
set tabstop=2
set expandtab
set shiftround
set shiftwidth=2
set incsearch
" viminfo: remember certain things when we exit
" " (http://vimdoc.sourceforge.net/htmldoc/usr_21.html)
" "   %    : saves and restores the buffer list
" "   '100 : marks will be remembered for up to 30 previously edited files
" "   /100 : save 100 lines from search history
" "   h    : disable hlsearch on start
" "   "500 : save up to 500 lines for each register
" "   :100 : up to 100 lines of command-line history will be remembered
" "   n... : where to save the viminfo files
" set viminfo=%100,'100,/100,h,\"500,:100,n~/.config/nvim/viminfo
" "
" "

let g:mta_filetypes= {
      \'javascript.jsx':1,
      \'typescript.tsx':1,
      \}

" to_html settings
let html_number_lines = 1
let html_ignore_folding = 1
let html_use_css = 1
"let html_no_pre = 0
let use_xhtml = 1
let xml_use_xhtml = 1

" ignored files
set wildignore+=tags
set wildignore+=*/tmp/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/public/*
set wildignore+=*/coverage/*
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/dist/*
set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig

function! NumberToggle()
 if(&relativenumber == 1)
   set norelativenumber
   set number
 else
   set relativenumber
 endif
endfunc

set termencoding=utf-8
scriptencoding utf-8
set encoding=UTF-8
lang en_US.UTF-8

let g:closetag_close_shortcut = '<leader>>'
" Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_shortcut = '>'
" Shortcut for closing tags, default is '>'
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js,*.ts,*.tsx'
" This will make the list of non closing tags self closing in the specified files.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.

let g:prettier#autoformat = 1



" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif |
autocmd Filetype gitcommit,markdown,note setlocal spell textwidth=72
autocmd Filetype gitcommit,markdown,note setlocal complete+=kspell
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=?
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=!
autocmd FileType ruby compiler ruby
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
autocmd BufNewFile,BufRead .prettierrc set syntax=json
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1

