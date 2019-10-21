" use max colors
let color='true'
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
set t_ut= " fixes transparent BG on tmux
" colorscheme flattened_light
" colorscheme corvine
" colorscheme Iceberg
" colorscheme OceanicNext
" colorscheme nord
" colorscheme edge
colorscheme forest-night
" colorscheme one
" colorscheme two-firewatch
" colorscheme hybrid_material
" colorscheme spacegray
" colorscheme vim-material
" colorscheme material-theme
set background=dark
" let g:material_style='palenight'
" let g:material_style='oceanic'
" let g:one_allow_italics = 1
" let g:two_firewatch_italics=1
let g:enable_bold_font = 1
let g:enable_italic_font = 1


" let g:lightline = {'colorscheme':'flattened_light'}
" let g:lightline = {'colorscheme':'oceanicnext'}
" let g:lightline = {'colorscheme':'twofirewatch'}
" let g:lightline = {'colorscheme':'one'}
let g:lightline = {
			\ 'colorscheme': 'forest-night',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified' ] ],
			\   'right': [ [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'filetype' ] ]
			\ }}
