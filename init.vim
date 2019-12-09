
filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
filetype plugin on

let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']

call plug#begin('~/.config/nvim/plugged')

" Plug 'neovim/nvim-lsp'

source ~/.dotfiles/vim/full/theme.vim " add style
source ~/.dotfiles/vim/nerdtree/init.vim " add and setup NERDTree
" languages
source ~/.dotfiles/vim/full/javascript.vim " add and setup JavaScript
source ~/.dotfiles/vim/full/ruby.vim " add and setup Ruby and Rails
source ~/.dotfiles/vim/full/css.vim  " add and setup CSS/SCSS/Styled Components
source ~/.dotfiles/vim/full/other.vim " support for other languages
" features
source ~/.dotfiles/vim/features.vim " support for other languages

call plug#end()

source ~/.dotfiles/vim/full/style.vim " setup style
source ~/.dotfiles/vim/syntax.vim " setup syntax
source ~/.dotfiles/vim/full/mappings.vim " mapping buttons
source ~/.dotfiles/vim/full/settings.vim " add style
source ~/.dotfiles/vim/full/auto.vim " add style
