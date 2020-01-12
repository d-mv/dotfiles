let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']
call plug#begin('~/.config/vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
" Plug 'maximbaz/lightline-ale'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-highlighturl'

Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'chriskempson/base16-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'romainl/flattened'
" Plug 'tomasr/molokai'

Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript syntax highlight
Plug 'peitalin/vim-jsx-typescript', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript JSX syntax highlight
Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript', 'javascript.jsx'] } " Inproved JSX syntax
Plug 'othree/es.next.syntax.vim' " ES.Next syntax for Vim
Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax for Vim
" Plug 'yardnsm/vim-import-cost', { 'do': 'npm install', 'for': g:javascript_filetypes } " See import cost of javascript deps

Plug 'Quramy/tsuquyomi/'
Plug 'Quramy/vim-js-pretty-template'
Plug 'leafgarland/typescript-vim'
" Plug 'dense-analysis/ale'
" Plug 'vim-syntastic/syntastic'
Plug 'reasonml-editor/vim-reason-plus'

Plug 'tmux-plugins/vim-tmux'

Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'AndrewRadev/tagalong.vim' " Automatically change closing tag
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff' ] }
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'

Plug 'jparise/vim-graphql'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
Plug 'TovarishFin/vim-solidity' " Solidity support
Plug 'jacqueswww/vim-vyper' " Vyper support
Plug 'ElmCast/elm-vim', {'for': 'elm'} " Elm
Plug 'othree/html5.vim', {'for':'html'}
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] + g:javascript_filetypes }
Plug 'tpope/vim-dotenv', { 'for': 'env' }
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
Plug 'cespare/vim-toml', { 'for': 'toml' }  " Toml highlight
call plug#end()

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ale_linters = {
         \'javascript': ['eslint', 'flow', 'flow-language-server', 'jscs', 'jshint', 'standard', 'xo'],
         \'javascript.jsx': ['eslint', 'flow', 'flow-language-server', 'jscs', 'jshint', 'standard', 'xo']
  \}

if has ('nvim')
    source ~/.dotfiles/vim/fzf_floating.vim
endif
