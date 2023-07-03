let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'rust-lang/rust.vim'

Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sainnhe/everforest'
Plug 'tomasiser/vim-code-dark'
Plug 'chriskempson/base16-vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'markdown', 'yaml', 'html'] }

call plug#end()

" coc-nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-markdownlint',
  \ 'coc-markdown-preview-enhanced',
  \ 'coc-rust-analyzer'
  \ ]
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
let g:highlightedyank_highlight_duration = 100
let g:indentLine_char_list = ['│']
let g:Hexokinase_highlighters = ['backgroundfull']
let g:todo_highlight_config = {
      \ 'TODO': {
      \   'gui_fg_color': '#444444',
      \   'gui_bg_color': '#9ac427',
      \   'cterm_fg_color': 'white',
      \   'cterm_bg_color': '214'
      \ },
      \ 'FIXME': {
      \   'gui_fg_color': '#ffffff',
      \   'gui_bg_color': '#f542b6',
      \   'cterm_fg_color': 'white',
      \   'cterm_bg_color': '204'
      \ },
      \   'REVIEW': {},
      \   'NOTE': {
      \     'gui_fg_color': '#ffffff',
      \     'gui_bg_color': '#ffbd2a',
      \     'cterm_fg_color': 'white',
      \     'cterm_bg_color': '214'
      \   },
      \   'OPTIMIZE': {},
      \ }

let g:rustfmt_autosave = 1

" codedark
" if you don't like many colors and prefer the conservative style of the standard Visual Studio
" let g:codedark_conservative=1
" Activates italicized comments (make sure your terminal supports italics)
let g:codedark_italics=1
" Make the background transparent
" colorscheme codedark
colorscheme base16-oceanicnext
