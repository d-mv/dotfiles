call plug#begin()
Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'

Plug 'tomasiser/vim-code-dark'
" Plug 'mhartington/oceanic-next'
" Plug 'sainnhe/everforest'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'arcticicestudio/nord-vim'

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'

Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'RRethy/vim-hexokinase'
Plug 'itchyny/lightline.vim'
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
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
let g:highlightedyank_highlight_duration = 100
let g:indentLine_char_list = ['│']
let g:Hexokinase_highlighters = ['backgroundfull']
