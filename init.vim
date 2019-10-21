
call plug#begin('~/.config/nvim/plugged')

source ~/.dotfiles/vim/theme.vim " add style
source ~/.dotfiles/vim/nerdtree.vim " add and setup NERDTree
" languages
source ~/.dotfiles/vim/typescript.vim " add and setup TypeScript
source ~/.dotfiles/vim/javascript.vim " add and setup JavaScript
" source ~/.dotfiles/vim/ruby.vim " add and setup Ruby and Rails
" source ~/.dotfiles/vim/css.vim  " add and setup CSS/SCSS/Styled Components
" source ~/.dotfiles/vim/other.vim " support for other languages

" frameworks
source ~/.dotfiles/vim/react.vim " add and setup React

" colors
Plug 'gorodinskiy/vim-coloresque'

" features
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'alvan/vim-closetag'
" Plug 'editorconfig/editorconfig-vim'
Plug 'jbgutierrez/vim-better-comments'
" Plug 'jiangmiao/auto-pairs'
" Plug 'junegunn/gv.vim'
" Plug 'kshenoy/vim-signature'
Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'rhysd/vim-grammarous'
" Plug 'sbdchd/neoformat'
" Plug 'shougo/neoinclude.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
" Plug 'valloric/MatchTagAlways'
Plug 'vim-scripts/BufOnly.vim' " Delete all the buffers except the current/named buffer
" Plug 'Townk/vim-autoclose' " This plugin for Vim enable an auto-close chars feature for you. 
" Plug 'janko/vim-test' " Run your tests at the speed of thought 
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines 

" git
" Plug 'chrisbra/vim-diff-enhanced'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'samoshkin/vim-mergetool'

" view/layout
Plug 'albertomontesg/lightline-asyncrun'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'

call plug#end()

source ~/.dotfiles/vim/style.vim " setup style
" source ~/.dotfiles/vim/syntax.vim " setup syntax
source ~/.dotfiles/vim/mappings.vim " mapping buttons

"set mouse=a
filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
filetype plugin on
lang en_US.UTF-8
scriptencoding utf-8
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
set norelativenumber
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

let g:ackprg = 'ag --vimgrep'
let g:closetag_close_shortcut = '<leader>>' " Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_filenames = '*.html,*.xhtml,*.phtml' " Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_shortcut = '>' " Shortcut for closing tags, default is '>'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js,*.ts,*.tsx' " This will make the list of non closing tags self closing in the specified files.
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:javascript_plugin_jsdoc = 1
let g:prettier#autoformat = 1
let g:rufo_auto_formatting = 1
let g:rustfmt_autosave = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_markdown_folding_disabled = 1
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
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

" Relative line numbers
autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

function! NumberToggle()
 if(&relativenumber == 1)
   set norelativenumber
   set number
 else
   set relativenumber
 endif
endfunc

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

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
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css
autocmd BufNewFile,BufRead .prettierrc set syntax=json
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter,WinEnter,BufNewFile,BufRead,BufEnter,TabEnter * IndentLinesEnable
autocmd StdinReadPre * let s:std_in=1

