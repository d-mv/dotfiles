call plug#begin('~/.config/vim/plugged')
" ::: FEATURES :::
" << NERDTree >>
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
Plug 'Raimondi/delimitMate' "  provides insert mode auto-completion for quotes, parens, brackets, etc.
"
" ::: LANGUAGE & FRAMEWORK SUPPORT :::
if has('nvim')
  Plug 'nvim-treesitter/nvim-treesitter'
endif
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'hrsh7th/nvim-compe'
" Plug 'norcalli/snippets.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'rescript-lang/vim-rescript'
Plug 'mhinz/vim-mix-format'
Plug 'elixir-editors/vim-elixir'
Plug 'jeremyjh/dialyxir'
Plug 'joegesualdo/jsdoc.vim'
Plug 'styled-components/vim-styled-components'
Plug 'cespare/vim-toml'

" ::: THEMING :::
" Plug 'tomasiser/vim-code-dark'
" Plug 'hzchirs/vim-material'
Plug 'LunarVim/darkplus.nvim'
" Plug 'sainnhe/everforest'
" Plug 'arcticicestudio/nord-vim'
" Plug 'yanisdb/primer-dark.vim'
" Plug 'tomasr/molokai'
" Plug 'altercation/vim-colors-solarized'
" Plug 'romainl/flattened'
" Plug 'mhartington/oceanic-next'
" Plug 'adrian5/oceanic-next-vim'
" Plug 'glepnir/oceanic-material'

call plug#end()

if has('nvim')
	let g:coc_global_extensions = [
						\ 'coc-actions',
						\ 'coc-css',
						\ 'coc-cssmodules',
						\ 'coc-eslint',
						\ 'coc-elixir',
						\ 'coc-git',
						\ 'coc-html',
						\ 'coc-jest',
						\ 'coc-json',
						\ 'coc-prettier',
						\ 'coc-rust-analyzer',
						\ 'coc-snippets',
						\ 'coc-spell-checker',
						\ 'coc-docthis',
						\ 'coc-stylelintplus',
						\ 'coc-svg',
						\ 'coc-toml',
						\ 'coc-tsserver',
						\ 'coc-webpack',
						\ 'coc-yaml',
						\ 'coc-yank'
						\ ]
endif

if !has('nvim')
	let g:coc_global_extensions = [
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
						\ 'coc-docthis',
						\ 'coc-stylelintplus',
						\ 'coc-svg',
						\ 'coc-toml',
						\ 'coc-tsserver',
						\ 'coc-webpack',
						\ 'coc-yaml',
						\ 'coc-yank'
						" \ 'coc-explorer'
						\ ]
endif


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

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:yats_host_keyword = 1

let g:mix_format_on_save = 1

" treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" signify
set updatetime=100
