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
let g:everforest_enable_italic = 1
let g:everforest_cursor = 'green'
let g:spring_night_highlight_terminal = 1
let g:spring_night_cterm_italic = 1
let g:sonokai_style = 'maia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:one_allow_italics = 1
let g:oceanic_gutter_like_bg=1 "	1: Give gutter same background as file buffer	0: Gutter is slightly darker
let g:oceanic_transparent_bg=1 "	1: Make buffer and gutter transparent	0: Use opaque background color
let g:oceanic_bold=1 "	0: Don't use bold text anywhere in theme	1: Make certain text items bold
let g:oceanic_italic_comments=1 "1: Comments use italic font (if supported)	0: Comments are not italic
let g:oceanic_material_background='ocean' "	'medium' use #282c34 color as background	ocean: #1b2b34 medium: #282C34 deep:#212112 darker:#1d1f21
let g:oceanic_material_allow_bold=1 "	1: use bold for certain text	0: not at all
let g:oceanic_material_allow_italic=1

if exists( '$TMUX' )
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set t_ut= " fixes transparent BG on tmux

if $TERM_PROGRAM !=# 'Apple_Terminal'
	let color='true'
	let &t_ZH="\e[3m"
	let &t_ZR="\e[23m"
endif

colorscheme codedark
" colorscheme vim-material
" colorscheme nord
" colorscheme base16-default-dark
" colorscheme everforest
" colorscheme primerdark
" colorscheme solarized
" colorscheme flattened_light
" colorscheme molokai
" colorscheme sonokai colorscheme one
" colorscheme onehalfdark
" colorscheme OceanicNext
" colorscheme oceanicnext
" colorscheme oceanic_material
