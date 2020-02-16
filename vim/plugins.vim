" let g:javascript_filetypes = ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx']
call plug#begin('~/.config/vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-highlighturl'

Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Plug 'elzr/vim-json', { 'for': 'json' }

" Plug 'Quramy/tsuquyomi/'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'tmux-plugins/vim-tmux'

Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'AndrewRadev/tagalong.vim' " Automatically change closing tag
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff' ] }
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'

Plug 'lilydjwg/colorizer'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
Plug 'TovarishFin/vim-solidity' " Solidity support
Plug 'jacqueswww/vim-vyper' " Vyper support
Plug 'ElmCast/elm-vim', {'for': 'elm'} " Elm
Plug 'othree/html5.vim', {'for':'html'}
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-dotenv', { 'for': 'env' }
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
Plug 'cespare/vim-toml', { 'for': 'toml' }  " Toml highlight
call plug#end()

if has ('nvim')
	source ~/.dotfiles/vim/fzf.vim
endif

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Better display for messages
set cmdheight=2
" always show signcolumns
set signcolumn=yes

