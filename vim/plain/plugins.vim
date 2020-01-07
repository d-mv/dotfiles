call plug#begin('~/.config/vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'maximbaz/lightline-ale'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-highlighturl'

Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'chriskempson/base16-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'romainl/flattened'
" Plug 'tomasr/molokai'

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'tmux-plugins/vim-tmux'

Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'AndrewRadev/tagalong.vim' " Automatically change closing tag
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff' ] }
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'

call plug#end()

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

if has ('nvim')
    source ~/.dotfiles/vim/fzf_floating.vim
endif
