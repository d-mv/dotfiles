set background=dark

let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:highlightedyank_highlight_duration = 1000
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:forest_night_enable_italic = 1



let color='true'
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

if has('termguicolors')
	set termguicolors
endif

if !has('nvim') && $TERM ==# 'screen-256color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set t_Co=256
set t_ut= " fixes transparent BG on tmux


colorscheme forest-night
" colorscheme slate
" colorscheme nord
" colorscheme dracula
" colorscheme onehalfdark
" colorscheme oceanicnext
" colorscheme onedark
" colorscheme flattened_light
" colorscheme solarized
" colorscheme solarized8_flat
" colorscheme monokai
" colorscheme OceanicNext
" colorscheme base16-default-dark
" colorscheme yami
" colorscheme eink
" colorscheme monotone
" colorscheme yin
" colorscheme typewriter-night
" colorscheme gruvbox-material
set noshowmode " not to show --INSERT--

" let g:lightline = {
"  		\ 'colorscheme': 'nord',
"  		\ 'active': {
"   		\   'left': [ [ 'mode', 'paste' ],
"   		\             [ 'readonly', 'filename', 'modified'],
"       \             ['at'],['gitbranch'], [ 'gitdiff' ],  ['filepath']],
"   		\   'right': [ [ 'lineinfo' ],
"   		\              [ 'percent' ],
"   		\              [ 'filetype' ]]
"   		\ },
"       \ 'inactive': {
"       \   'left': [ [ 'filename', 'gitversion' ] ],
"       \ },
" 		\ 'component': {
"                 \   'at': ''
"                 \ },
"                 \ 'component_function': {
"                 \   'gitbranch': 'gitbranch#name',
"                 \   'filepath': 'FilenameForLightline'
"                 \ },
"                 \ 'component_expand': {
"                 \   'gitdiff': 'lightline#gitdiff#get',
"                 \ },
"                 \ 'component_type': {
"                 \   'gitdiff': 'middle',
"                 \ },
" 		\ }

" function! FilenameForLightline()
"     return expand('%')
" endfunction
