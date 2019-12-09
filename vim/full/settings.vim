lang en_US.UTF-8
scriptencoding utf-8
set termencoding=utf-8
"set mouse=a
set autoindent smartindent " Set Proper Tabs
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set clipboard=unnamed
set complete=.,w,b,u,U,t,i,d       " Do lots of scanning on tab completion
set completeopt-=preview           " Do not show preview window, just the menu
set confirm " show confirmation dialogue
set cursorline " Enable highlighting of the current line
set diffopt+=vertical
set diffopt=filler,iwhite          " In diff mode, ignore whitespace changes and align unchanged lines
set directory=~/.config/nvim/swap  " Directory to use for the swap file
set encoding=UTF-8
set expandtab
set hidden           " Don't abandon buffers moved to the background
set hlsearch
set ignorecase
set incsearch
set laststatus=2          " When you go into insert mode, the status line color changes. When you leave insert mode, the status line color changes back."
set lazyredraw
set nocompatible
set noshowmode " not to show --INSERT--
set nowrap
set number " Show line numbers
set path+=**
set ruler
set secure
set selection=exclusive " when selecting with 'g_' don't include symbol from next line
set shell=/bin/zsh " Terminal
set shiftround
set shiftwidth=4
set shortmess+=A " Always edit file, even when swap file is found
set showmatch
set smartcase
set smarttab      " Make <tab> and <backspace> smarter
" set spell
set splitbelow
set splitright
set tabstop=2
set visualbell
set relativenumber
set exrc " enable project speficific vimrc
set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig
set wildignore+=*/build/*
set wildignore+=*/coverage/*
set wildignore+=*/dist/*
set wildignore+=*/node_modules/*
set wildignore+=*/public/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/tmp/*
set wildignore+=tags
set wildmenu         " Enhanced completion hints in command line


let g:ackprg = 'ag --vimgrep'
let g:closetag_close_shortcut = '<leader>>' " Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_filenames = '*.jsx, *.tsx, *.html,*.xhtml,*.phtml' " Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_shortcut = '>' " Shortcut for closing tags, default is '>'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js,*.ts,*.tsx' " This will make the list of non closing tags self closing in the specified files.
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
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
let g:move_key_modifier = 'C'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where alvan/vim-closetag plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx,*.ejs,*.erb'

" set tabline=%!tabber#TabLine()
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

" Add additional information in popups (VIM 8.0+ only)
if !has('nvim')
  set completeopt+=popup
  set completepopup=height:10,width:60,highlight:Pmenu,border:off
endif

" Scroll all windows at the same time
function! ToggleScrollBind()
  if (s:scroll_mode == 0)
    execute ":windo set scrollbind!"
    let s:scroll_mode = 1
    echo 'Enable scrollbind'
  else
    execute ":windo set noscrollbind!"
    let s:scroll_mode = 0
    echo 'Disable scrollbind'
  endif
endfunction

source ~/.dotfiles/vim/fzf_floating.vim

" autocmd FileType json syntax match Comment +\/\/.\+$+ " to get correct comment highlighting in json

