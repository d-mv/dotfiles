let color='true'
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set t_Co=256
set t_ut= " fixes transparent BG on tmux

if has ('nvim')
    set termguicolors
endif

" colorscheme nord
colorscheme OceanicNext
set background=dark
" let g:enable_bold_font = 1
" let g:enable_italic_font = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:lightline = {
			\ 'colorscheme': 'oceanicnext',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified' ] ],
			\   'right': [ [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'filetype' ] ]
			\ }}
