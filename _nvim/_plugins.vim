call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'sakshamgupta05/vim-todo-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'

Plug 'chriskempson/base16-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/everforest'
Plug 'rebelot/kanagawa.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim'

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'RRethy/vim-hexokinase'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

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
