" colorscheme slate
" colorscheme nord
" colorscheme dracula
colorscheme onehalfdark
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
 		\ 'colorscheme': 'onehalfdark',
 		\ 'active': {
  		\   'left': [ [ 'mode', 'paste' ],
  		\             [ 'readonly', 'filename', 'modified'],
                \             ['at'],['gitbranch']],
  		\   'right': [ [ 'lineinfo' ],
  		\              [ 'percent' ],
  		\              [ 'filetype' ]]
  		\ },
		\ 'component': {
                \   'at': '@'
                \ },
                \ 'component_function': {
                \   'gitbranch': 'gitbranch#name'
                \ },
		\ }

"  let g:lightline = {
"  		\ 'colorscheme': 'onehalfdark',
"  		\ 'active': {
"   		\   'left': [ [ 'mode', 'paste' ],
"   		\             [ 'readonly', 'filename', 'modified'],
"                 \             ['at'],['gitbranch']],
"   		\   'right': [ [ 'lineinfo' ],
"   		\              [ 'percent' ],
"                 \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
"   		\              [ 'filetype' ]]
"   		\ },
" 		\ 'component': {
"                 \   'at': '@'
"                 \ },
"                 \ 'component_function': {
"                 \   'gitbranch': 'gitbranch#name'
"                 \ },
" 		\ }
"
" let g:lightline.component_expand = {
"       \  'linter_checking': 'lightline#ale#checking',
"       \  'linter_warnings': 'lightline#ale#warnings',
"       \  'linter_errors': 'lightline#ale#errors',
"       \  'linter_ok': 'lightline#ale#ok',
"       \ }
"
" let g:lightline.component_type = {
"       \     'linter_checking': 'left',
"       \     'linter_warnings': 'warning',
"       \     'linter_errors': 'error',
"       \     'linter_ok': 'left',
"       \ }
