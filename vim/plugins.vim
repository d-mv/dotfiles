call plug#begin()
" Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'

" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'

Plug 'tomasiser/vim-code-dark'
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/everforest'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'

Plug 'jnurmine/Zenburn'
Plug 'phanviet/vim-monokai-pro'
Plug 'rickharris/vim-monokai'

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'

Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
" Plug 'frazrepo/vim-rainbow' " Rainbow brackets for Vim
" Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair

" Plug 'Raimondi/delimitMate' "  provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'RRethy/vim-hexokinase'
" Plug 'tpope/vim-abolish' " easily search for, substitute, and abbreviate multiple variants of a word

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
  \ 'coc-html',
  \ 'coc-metals'
  \ ]

" prettier
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" highlightedyank
let g:highlightedyank_highlight_duration = 100

" auto-pairs
" let g:AutoPairsFlyMode = 1

" indentLine
let g:indentLine_char_list = ['│']

let g:Hexokinase_highlighters = ['backgroundfull']
