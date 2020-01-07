" auto run
autocmd BufReadPost *
     \ if line("'\"") > 0 && line ("'\"") <= line("$") |
     \     exe "normal g'\"" |
     \ endif |


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
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd StdinReadPre * let s:std_in=1
