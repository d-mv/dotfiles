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
"
" << fzf >>
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"
" << other >>
Plug 'tomtom/tcomment_vim' " universal comment vim-plugin that also handles embedded filetypes
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'machakann/vim-highlightedyank'
Plug 'RRethy/vim-hexokinase'
Plug 'kshenoy/vim-signature'  " plugin to place, toggle and display marks
"
" ::: LANGUAGE & FRAMEWORK SUPPORT :::
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'neovim/nvim-lspconfig'
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'reasonml-editor/vim-reason-plus'

" ::: THEMING :::
Plug 'sainnhe/forest-night'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'romainl/flattened'

call plug#end()

let g:coc_global_extensions = [
          \ 'coc-actions',
          \ 'coc-css',
          \ 'coc-cssmodules',
          \ 'coc-eslint',
          \ 'coc-git',
          \ 'coc-html',
          \ 'coc-jest',
          \ 'coc-json',
          \ 'coc-prettier',
					\ 'coc-rust-analyzer',
          \ 'coc-snippets',
          \ 'coc-spell-checker',
          \ 'coc-stylelintplus',
          \ 'coc-svg',
					\ 'coc-toml',
          \ 'coc-tsserver',
          \ 'coc-webpack',
          \ 'coc-yaml',
          \ 'coc-yank'
          \ ]

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
