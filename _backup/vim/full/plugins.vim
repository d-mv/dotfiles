call plug#begin('~/.config/vim/plugged')

Plug 'Quramy/tsuquyomi/'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'

source $HOME/.dotfiles/vim/full/languages/js.vim
source $HOME/.dotfiles/vim/full/languages/other.vim

call plug#end()
