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
let g:spring_night_highlight_terminal = 1
let g:spring_night_cterm_italic = 1
let g:sonokai_style = 'maia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:one_allow_italics = 1
 
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
" colorscheme sonokai
" colorscheme one
" colorscheme onehalfdark
" colorscheme OceanicNext
