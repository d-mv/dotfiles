" let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']
call plug#begin('~/.config/vim/plugged')

Plug 'tpope/vim-vinegar'
" Plug 'itchyny/lightline.vim'
" Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff', 'Gdiffsplit', 'Gbrowse' ] }
Plug 'airblade/vim-gitgutter'
" Plug 'niklaas/lightline-gitdiff'
" Plug 'wincent/vcs-jump'

" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'itchyny/vim-highlighturl'

" Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'altercation/vim-colors-solarized'
" Plug 'lifepillar/vim-solarized8'
" Plug 'crusoexia/vim-monokai'
" Plug 'mhartington/oceanic-next'
" Plug 'chriskempson/base16-vim'
" Plug 'nicknisi/vim-base16-lightline'
Plug 'joshdick/onedark.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'bigfish/vim-stylelint'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim', {'for': ['tsx','ts','typescript','typescriptreact']} "  Typescript syntax files for Vim
Plug 'peitalin/vim-jsx-typescript', {'for': ['tsx','ts','typescript','typescriptreact']} "  React JSX syntax highlighting for vim and Typescript
Plug 'Quramy/vim-js-pretty-template' "  highlights JavaScript's Template Strings in other FileType syntax rule 
Plug 'Quramy/vim-dtsm' "  A Vim plugin to execute TypeScript dtsm command
Plug 'mhartington/vim-typings' "  search for typings in vim

Plug 'pangloss/vim-javascript' "  Vastly improved Javascript indentation and syntax support in Vim

Plug 'tmux-plugins/vim-tmux' "  tmxu.conf editing

Plug 'tomtom/tcomment_vim'
" Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'AndrewRadev/tagalong.vim' " Automatically change closing tag
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'

Plug 'yegappan/greplace'
Plug 'lilydjwg/colorizer'
Plug 'RRethy/vim-hexokinase'
" Plug 'reasonml-editor/vim-reason-plus'
Plug 'rust-lang/rust.vim', {'for': 'rs'} 
Plug 'cespare/vim-toml', { 'for': 'toml' }  " Toml highlight
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
" Plug 'TovarishFin/vim-solidity', {'for': 'sol'} " Solidity support
" Plug 'jacqueswww/vim-vyper' " Vyper support
" Plug 'ElmCast/elm-vim', {'for': 'elm'} " Elm
Plug 'othree/html5.vim', {'for':'html'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'tpope/vim-dotenv', { 'for': 'env' }
Plug 'jxnblk/vim-mdx-js', {'for': 'mdx' }
call plug#end()

" set rtp+=/usr/local/opt/fzf

if has ('nvim')
	source ~/.dotfiles/vim/fzf.vim
endif

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

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
let g:lightline#gitdiff#indicator_added = ' '
let g:lightline#gitdiff#indicator_modified = ' '
let g:lightline#gitdiff#indicator_deleted = ' '
let g:lightline#gitdiff#separator = ' '

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

