" colorscheme nord
" colorscheme base16
colorscheme onehalfdark
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" let base16colorspace=256  " Access colors present in 256 colorspace

      " \ 'colorscheme': 'nord',
let g:lightline = {
      \ 'colorscheme': 'onehalfdark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, world!'
      \ },
      \ }
