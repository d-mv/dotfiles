" use max colors
let color='true'
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
set t_ut= " fixes transparent BG on tmux
" set background=light
colorscheme flattened_light
" colorscheme OceanicNext
" colorscheme nord
set background=light
" colorscheme edge
" colorscheme forest-night
let g:lightline = {'colorscheme':'flattened_light'}
