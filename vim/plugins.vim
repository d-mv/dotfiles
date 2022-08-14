call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'
" Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair

Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
" Plug 'frazrepo/vim-rainbow' " Rainbow brackets for Vim

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

" coc-nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html'
  \ ]

" prettier
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" highlightedyank
let g:highlightedyank_highlight_duration = 100

" auto-pairs
let g:AutoPairsFlyMode = 1

" indentLine
let g:indentLine_char_list = ['│']
