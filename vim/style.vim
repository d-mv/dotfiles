" colorscheme slate
colorscheme nord
" colorscheme dracula
" colorscheme onehalfdark
" colorscheme oceanicnext
" colorscheme flattened_light

let color='true'
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set t_Co=256
set t_ut= " fixes transparent BG on tmux

if has ('iTerm.app')
  set termguicolors
endif

" if has ('nvim')
"     set termguicolors
" endif

set background=dark
let g:enable_bold_font = 1
let g:enable_italic_font = 1
set guifont=IBM\ Plex\ Mono
set noshowmode " not to show --INSERT--

let g:lightline = {
 		\ 'colorscheme': 'nord',
 		\ 'active': {
  		\   'left': [ [ 'mode', 'paste' ],
  		\             [ 'readonly', 'filename', 'modified'],
                \             ['at'],['gitbranch']],
  		\   'right': [ [ 'lineinfo' ],
  		\              [ 'percent' ],
  		\              [ 'filetype' ]]
  		\ },
		\ 'component': {
                \   'at': ''
                \ },
                \ 'component_function': {
                \   'gitbranch': 'gitbranch#name'
                \ },
		\ }
