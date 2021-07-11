" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" auto run
autocmd BufReadPost *
     \ if line("'\"") > 0 && line ("'\"") <= line("$") |
     \     exe "normal g'\"" |
     \ endif |

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

au BufEnter * if &buftype == 'terminal' | :startinsert | endif " start terminal in insert mode

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

augroup daml_ft
  au!
  autocmd BufNewFile,BufRead *.daml  set syntax=haskell set ft=daml
augroup END

autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync{}
autocmd FileType scss set iskeyword+=-
autocmd Filetype gitcommit,markdown,note setlocal spell textwidth=72
autocmd Filetype gitcommit,markdown,note setlocal complete+=kspell
au BufNewFile,BufRead *.js.flow setlocal filetype=javascript
au BufNewFile,BufRead *.js setlocal filetype=javascript.jsx
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.ejs     set filetype=ejs
au BufNewFile,BufRead *.jst     set filetype=ejs
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType typescript.tsx setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=prettier\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ scss
au FileType css setlocal formatprg=prettier\ --parser\ css
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufWritePre *.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" au BufWritePre  *.js,*.jsx,*.mjs,*.ts,*.tsx CocCommand eslint.executeAutofix
autocmd StdinReadPre * let s:std_in=1
