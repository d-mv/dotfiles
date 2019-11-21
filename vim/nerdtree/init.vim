" pluggins
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" settings
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize=get(g:,'NERDTreeWinSize',40)
let g:NERDTreeChDirMode=get(g:,'NERDTreeChDirMode',1)
let g:NERDTreeShowHidden = get(g:, 'NERDTreeShowHidden', 0)

let g:NERDTreeDirArrows = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeIgnore = ['^\~$[[dir]]', '^\.git$[[dir]]','^\.o$[[file]]', '^\.pyc$[[file]]', '^\.DS_Store$[[file]]']

" imports
source ~/.dotfiles/vim/nerdtree/style.vim " Import icons and highlighting
