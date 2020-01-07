" use max colors
let color='true'
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set t_Co=256
set t_ut= " fixes transparent BG on tmux

if has ('nvim')
    set termguicolors
endif

" colorscheme flattened_light
" colorscheme corvine
" colorscheme Iceberg
" colorscheme OceanicNext
colorscheme nord
" colorscheme edge
" colorscheme forest-night
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
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
let g:enable_bold_font = 1
let g:enable_italic_font = 1

" let g:lightline = {'colorscheme':'flattened_light'}
" let g:lightline = {'colorscheme':'oceanicnext'}
" let g:lightline = {'colorscheme':'twofirewatch'}
" let g:lightline = {'colorscheme':'one'}
" let g:lightline = {'colorscheme':'forest_night'}
let g:lightline = {
			\ 'colorscheme': 'nord',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified', 'method' ] ],
			\   'right': [ [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'filetype' ] ]
			\ },
      \'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },}

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
