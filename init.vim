call plug#begin('~/.vim/plugged')
"**** LANGUAGES ****
" TS/TSX
Plug 'neoclide/coc.nvim',  {'tag': '*', 'do': { -> coc#util#install()}}
"{'do': 'yarn install --frozen-lockfile'}
Plug 'ianks/vim-tsx'
Plug 'HerringtonDarkholme/yats.vim'

" JS
Plug 'kern/vim-es7'
Plug 'pangloss/vim-javascript'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx','typescript','typescript.tsx'] }
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'nikvdp/ejs-syntax'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx','typescript','typescript.tsx']  }
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'

" React
Plug 'mlaursen/vim-react-snippets'
Plug 'tellijo/vim-react-native-snippets'

" Styled/CSS/SCSS
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'ap/vim-css-color'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'haml', 'eruby'] }
Plug 'stephpy/vim-yaml'
Plug 'fishbullet/deoplete-ruby'

" others
Plug 'jparise/vim-graphql'
Plug 'othree/html5.vim'
Plug 'tpope/vim-dotenv'

" colors
Plug 'gorodinskiy/vim-coloresque'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" features
Plug '/usr/local/opt/fzf'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'junegunn/gv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'rhysd/vim-grammarous'
Plug 'jbgutierrez/vim-better-comments'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'Valloric/MatchTagAlways'
Plug 'Shougo/neoinclude.vim'

" view/layout
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'

" themes
"Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'romainl/flattened'
"Plug 'mhartington/oceanic-next'

" -= disabled =-
Plug 'ryanoasis/vim-devicons'

call plug#end()

" >>> Main setup
set nocompatible
filetype plugin on
set noshowmode " not to show --INSERT--
" use max colors
let color='true'
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
set t_ut= " fixes transparent BG on tmux

" >>> Style
set background=light
let g:lightline = {'colorscheme':'solarized'}
colorscheme flattened_light
"colorscheme OceanicNext
"colorscheme nord



" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')



" Syntax
syntax enable

hi htmlArg gui=italic
hi htmlArg cterm=italic
hi Comment gui=italic
hi Comment cterm=italic
hi tsxAttributeComment cterm=italic
hi tsxAttributeComment gui=italic
hi tsxBlockComment cterm=italic
hi ttsxBlockCommen gui=italic
hi tsxLineComment cterm=italic
hi tsxLineComment gui=italic
hi tsxComment cterm=italic
hi tsxComment gui=italic
hi jsComment cterm=italic
hi jsComment gui=italic
hi Type    gui=italic
hi Type    cterm=italic
hi Folded guifg=yellow guibg=NONE ctermfg=yellow ctermbg=NONE
hi Search ctermfg=white ctermbg=red guifg=white  guibg=Red
hi Folded guifg=orange            guibg=black
hi SpellBad ctermbg=yellow


function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" >>> Mapping buttons
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" use tab
imap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
 let col = col('.') - 1
 return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" >>> Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set autoindent smartindent
set smarttab      " Make <tab> and <backspace> smarter
set tabstop=2
set expandtab

" Enable highlighting of the current line
set cursorline

" Terminal
set shell=/bin/zsh

set wildmenu

" Search settings
set path+=**
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']


" Misc
 set secure
 set lazyredraw
 set splitbelow
 set splitright
 set diffopt+=vertical
 set shell=/bin/zsh
 set clipboard=unnamed
 filetype plugin indent on " Do filetype detection and load custom file plugins and indent files
 set laststatus=2          " When you go into insert mode, the status line color changes. When you leave insert mode, the status line color changes back."


" Always edit file, even when swap file is found
set shortmess+=A
set hidden           " Don't abandon buffers moved to the background
set wildmenu         " Enhanced completion hints in command line
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set complete=.,w,b,u,U,t,i,d       " Do lots of scanning on tab completion
set completeopt-=preview           " Do not show preview window, just the menu
set directory=~/.config/nvim/swap  " Directory to use for the swap file
set diffopt=filler,iwhite          " In diff mode, ignore whitespace changes and align unchanged lines
set nowrap
set visualbell
"set mouse=a

" Relative line numbers
set norelativenumber
autocmd InsertLeave * :call NumberToggle()
autocmd InsertEnter * :call NumberToggle()

" Indentation and tabbing
set autoindent smartindent
set smarttab      " Make <tab> and <backspace> smarter
set tabstop=2
set expandtab
set shiftround
set shiftwidth=2
set incsearch
" viminfo: remember certain things when we exit
" " (http://vimdoc.sourceforge.net/htmldoc/usr_21.html)
" "   %    : saves and restores the buffer list
" "   '100 : marks will be remembered for up to 30 previously edited files
" "   /100 : save 100 lines from search history
" "   h    : disable hlsearch on start
" "   "500 : save up to 500 lines for each register
" "   :100 : up to 100 lines of command-line history will be remembered
" "   n... : where to save the viminfo files
" set viminfo=%100,'100,/100,h,\"500,:100,n~/.config/nvim/viminfo
" "
" "

let g:mta_filetypes= {
      \'javascript.jsx':1,
      \'typescript.tsx':1,
      \}

" to_html settings
let html_number_lines = 1
let html_ignore_folding = 1
let html_use_css = 1
"let html_no_pre = 0
let use_xhtml = 1
let xml_use_xhtml = 1

" >>> NERDTree setup
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeIgnore = ['^\~$[[dir]]', '^\.git$[[dir]]','^\.o$[[file]]', '^\.pyc$[[file]]', '^\.DS_Store$[[file]]']
" highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
"let g:NERDTreeHighlightFoldersFullName = 1  highlights the folder name
let g:NERDTreeHighlightFoldersFullName = base16colorspace
" indicators
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : '☒ ',
    \ "Unknown"   : "? "
    \ }
" colors
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" what to highlight
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.ts'] = s:darkBlue " sets the color for TS files
let g:NERDTreeExactMatchHighlightColor['.tsx'] = s:darkBlue " sets the color for TSX files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb"

"let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsConcealNerdtreeBrackets = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1

" dir-icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ﯤ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['log'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['erb'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['slim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['scss'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sass'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['coffee'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rb'] = ''

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.ts'] = 'ﭧ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.js'] = 'ﭧ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.git'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['yarn.lock'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.prettierrc']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.eslint']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['tsconfig.json']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.editorconfig']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.vscode'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack\.'] = 'ﰩ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.route.*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.routes.*']=''

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['ormconfig.js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env'] = 'ﭩ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Rakefile'] = ''

" ignored files
set wildignore+=tags
set wildignore+=*/tmp/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/public/*
set wildignore+=*/coverage/*
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/dist/*
set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig

" Turn on spellcheck
autocmd Filetype gitcommit,markdown,note setlocal spell textwidth=72
autocmd Filetype gitcommit,markdown,note setlocal complete+=kspell

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif |

function! NumberToggle()
 if(&relativenumber == 1)
   set norelativenumber
   set number
 else
   set relativenumber
 endif
endfunc

" ruby
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=?
autocmd FileType ruby,eruby,yaml,haml setlocal iskeyword+=!
autocmd FileType ruby compiler ruby

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
" some built in keybindings for included plugins
" "
" " matchit - <%> jums to other end of selected brackets
" " surround - <cs'"> - change ' to " around current selection
" " surround - <ds"> - remove " around current selection
" " surround - <yss[> - surounds current selection with [
" " textobj-rubyblock - var - selects outer ruby block
" "       vir - selects inner ruby block
" ]]"'"
" "
map <C-b> :NERDTreeToggle<CR>
map <C-O> :files<CR>
map <C-d> yyp
map <C-D> :ALEDetail<CR>

command! Q q " Bind :Q to :q
command! Qall qall
command! W w

set termencoding=utf-8
scriptencoding utf-8
set encoding=UTF-8
lang en_US.UTF-8

" turn off keys
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>


let g:closetag_close_shortcut = '<leader>>'
" Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_shortcut = '>'
" Shortcut for closing tags, default is '>'
let g:closetag_emptyTags_caseSensitive = 1 " This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *js,*.ts,*.tsx'
" This will make the list of non closing tags self closing in the specified files.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.

let g:prettier#autoformat = 1


" Ale Linting
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\   'typescript': ['tsserver', 'tslint'],
"\   'vue': ['eslint']
"\}
"let g:ale_fixers = {
"\    'javascript': ['eslint'],
"\    'typescript': ['prettier'],
"\    'vue': ['eslint'],
"\    'scss': ['prettier'],
"\    'html': ['prettier']
"\}
"let g:ale_fix_on_save = 1
"let g:ale_completion_tsserver_autoimport = 1
" Enable completion where available.
 "This setting must be set before ALE is loaded.

 "You should not turn this setting on if you wish to use ALE as a completion
 "source for other completion plugins, like Deoplete.
"let g:ale_completion_enabled = 1







" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
autocmd BufNewFile,BufRead .prettierrc set syntax=json
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1

