" >>>> Features
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag' " Auto close (X)HTML tags
" Plug 'jbgutierrez/vim-better-comments'
Plug 'tomtom/tcomment_vim'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'kshenoy/vim-signature' "  Plugin to toggle, display and navigate marks
Plug 'mileszs/ack.vim'
" Plug 'tpope/vim-endwise' " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'valloric/MatchTagAlways' " A Vim plugin that always highlights the enclosing html/xml tags
Plug 'vim-scripts/BufOnly.vim' " Delete all the buffers except the current/named buffer
Plug 'Townk/vim-autoclose' " This plugin for Vim enable an auto-close chars feature for you.
Plug 'AndrewRadev/tagalong.vim' " Automatically change closing tag
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'matze/vim-move' " Plugin to move lines and selections up and down


" git
Plug 'tpope/vim-fugitive', { 'on': [ 'Gstatus', 'Gblame', 'Gdiff' ] }
Plug 'airblade/vim-gitgutter'

" view/layout
Plug 'itchyny/lightline.vim'

if has ('nvim')
    source ~/.dotfiles/vim/fzf_floating.vim
endif
