filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
filetype plugin on

let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']

call plug#begin('~/.config/nvim/plugged')

source ~/.dotfiles/vim/basic/theme.vim " add theme
source ~/.dotfiles/vim/nerdtree/init.vim " add and setup NERDTree
source ~/.dotfiles/vim/basic/languages.vim " languages
source ~/.dotfiles/vim/features.vim " features

call plug#end()

source ~/.dotfiles/vim/basic/style.vim " setup style
source ~/.dotfiles/vim/syntax.vim " setup syntax
source ~/.dotfiles/vim/basic/mappings.vim " mapping buttons
source ~/.dotfiles/vim/basic/settings.vim " add style
source ~/.dotfiles/vim/basic/auto.vim " add style
