
call plug#begin('~/.config/nvim/plugged')

source ~/.dotfiles/vim/theme.vim " add style
source ~/.dotfiles/vim/nerdtree/init.vim " add and setup NERDTree
" languages
source ~/.dotfiles/vim/javascript.vim " add and setup JavaScript
" source ~/.dotfiles/vim/ruby.vim " add and setup Ruby and Rails
source ~/.dotfiles/vim/css.vim  " add and setup CSS/SCSS/Styled Components
source ~/.dotfiles/vim/other.vim " support for other languages
 
" frameworks
source ~/.dotfiles/vim/react.vim " add and setup React

Plug 'neovim/nvim-lspPlug '


" colors
" Plug 'gorodinskiy/vim-coloresque'

" features
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag' " Auto close (X)HTML tags
Plug 'jbgutierrez/vim-better-comments'
Plug 'tomtom/tcomment_vim'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'kshenoy/vim-signature' "  Plugin to toggle, display and navigate marks
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-endwise' " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'valloric/MatchTagAlways' " A Vim plugin that always highlights the enclosing html/xml tags
Plug 'vim-scripts/BufOnly.vim' " Delete all the buffers except the current/named buffer
Plug 'Townk/vim-autoclose' " This plugin for Vim enable an auto-close chars feature for you.
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" view/layout
" Plug 'albertomontesg/lightline-asyncrun'
Plug 'itchyny/lightline.vim'
" " Plug 'bling/vim-bufferline'

call plug#end()

source ~/.dotfiles/vim/style.vim " setup style
source ~/.dotfiles/vim/syntax.vim " setup syntax
source ~/.dotfiles/vim/mappings.vim " mapping buttons
source ~/.dotfiles/vim/coc.vim " settings for coc-nvim
source ~/.dotfiles/vim/settings.vim " add style

filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
filetype plugin on

let g:ackprg = 'ag --vimgrep'
let g:closetag_close_shortcut = '<leader>>' " Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_filenames = '*.jsx, *.tsx, *.html,*.xhtml,*.phtml' " Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_shortcut = '>' " Shortcut for closing tags, default is '>'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js,*.ts,*.tsx' " This will make the list of non closing tags self closing in the specified files.
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:javascript_plugin_jsdoc = 1
let g:prettier#autoformat = 1
let g:rufo_auto_formatting = 1
let g:rustfmt_autosave = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:vim_markdown_folding_disabled = 1
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
let g:mta_filetypes= {
      \'javascript.jsx':1,
      \'typescript.tsx':1,
      \}
"
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
highlight VendorPrefix guifg=#00ffff gui=bold
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
"

" to_html settings
let html_number_lines = 1
let html_ignore_folding = 1
let html_use_css = 1
"let html_no_pre = 0
let use_xhtml = 1
let xml_use_xhtml = 1

" Relative line numbers
"autocmd InsertLeave * :call NumberToggle()
"autocmd InsertEnter * :call NumberToggle()

"function! NumberToggle()
" if(&relativenumber == 1)
"   set norelativenumber
"   set number
" else
  set relativenumber
" endif
"endfunc

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line ("'\"") <= line("$") |
     \     exe "normal g'\"" |
     \ endif |

autocmd Filetype gitcommit,markdown,note setlocal spell textwidth=72
autocmd Filetype gitcommit,markdown,note setlocal complete+=kspell
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=?
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=!
autocmd FileType ruby compiler ruby
au BufNewFile,BufRead *.js.flow setlocal filetype=javascript
au BufNewFile,BufRead *.js setlocal filetype=javascript.jsx
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType typescript.tsx setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ scss
au FileType css setlocal formatprg=prettier\ --parser\ css
au BufNewFile,BufRead *.ejs     set filetype=ejs
au BufNewFile,BufRead *.jst     set filetype=ejs
autocmd BufNewFile,BufRead .prettierrc set syntax=json
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" " autocmd VimEnter,WinEnter,BufNewFile,BufRead,BufEnter,TabEnter * IndentLinesEnable
autocmd StdinReadPre * let s:std_in=1
