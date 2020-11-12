" let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']
call plug#begin('~/.config/vim/plugged')
" ::: FEATURES :::
" << NERDTree >>
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
"
" << Git >>
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff', 'Gdiffsplit', 'Gbrowse' ] }
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'  " plugin to place, toggle and display marks
"
" << fzf >>
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"
" << other >>
Plug 'tomtom/tcomment_vim' " universal comment vim-plugin that also handles embedded filetypes
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'machakann/vim-highlightedyank'
Plug 'jiangmiao/auto-pairs'
Plug 'RRethy/vim-hexokinase'
"
" ::: LANGUAGE & FRAMEWORK SUPPORT :::
Plug 'neovim/nvim-lsp'

" Plug 'haorenW1025/completion-nvim'
" Plug 'haorenW1025/diagnostic-nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'
" Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
" Plug 'tpope/vim-dotenv', { 'for': 'env' }
" Plug 'jxnblk/vim-mdx-js', {'for': 'mdx' }
" Plug 'rust-lang/rust.vim', {'for': 'rs'}
" Plug 'cespare/vim-toml', { 'for': 'toml' }  " Toml highlight
" Plug 'tmux-plugins/vim-tmux' "  tmxu.conf editing
" Plug 'TovarishFin/vim-solidity', {'for': 'sol'} " Solidity support

" ::: THEMING :::
" Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'mhartington/oceanic-next'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'mhartington/oceanic-next'
call plug#end()

let g:coc_global_extensions = ['coc-eslint', 'coc-css', 'coc-html', 'coc-stylelintplus', 'coc-prettier','coc-tsserver']

" Better display for messages
" set cmdheight=2
" always show signcolumns
set signcolumn=yes

let g:indentLine_char = '│'
let g:rustfmt_autosave = 1
let g:Hexokinase_highlighters = ['backgroundfull']

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:yats_host_keyword = 1

" treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
