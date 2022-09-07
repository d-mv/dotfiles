syntax on
filetype plugin on
set autoindent
set autoread
set backspace=2 " allow backspace over everything
set clipboard=unnamed
set cmdheight=1 ", -- more space in the neovim command line for displaying messages
set colorcolumn=+0
set complete=.,w,b,u,U,t,i,d
set completeopt=menu,menuone,preview " mostly just for cmp
set conceallevel=0 ", so that `` is visible in markdown files
set cursorline " highlight the current line
set encoding=utf-8
set expandtab " = true, -- convert tabs to spaces
set fileencoding=utf-8 ", -- the encoding written to a file
set fillchars=vert:┃ ", -- split line - for vsplits
set foldlevel=1
set foldlevelstart=99
set foldmethod=syntax ", -- fold based on indent
set foldnestmax=10 ", --deepest fold is 10 levels
set hidden " switch between buffers without error
set hlsearch " = true, -- highlight all matches on previous search pattern
set incsearch " highlight while typing search
set ignorecase smartcase
set linebreak " = true, -- set soft wrapping
set mat=2 ", -- how many tenths of a second to blink
set nocompatible
set number " set numbered lines
set numberwidth=4 ", -- set number column width to 2 {default 4}
set path+=** " tab completion for all file-lated tasks
set pumheight=20 ", -- pop up menu height
set re=0 ", turn off old regex engine
set relativenumber " set relative numbered lines
set scrolloff=5
set selection=exclusive " don't select next line symbol
set shell=$SHELL
set shiftround " round indent to a multiple of 'shiftwidth'
set shiftwidth=2 " the number of spaces inserted for each indentation
set showbreak=↪
set showcmd " show incomplete commands
set showmatch " show matching braces
set showtabline=1 ", -- always show tabs
set sidescrolloff=8
set smartcase " = true, -- smart case
set smartindent " = true, -- make indenting smarter again
set smarttab " = true, -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set so=7 ", -- set 7 lines to the cursors - when moving vertical
set softtabstop=2 ", -- edit as if the tabs are 4 characters wide
set splitbelow " = true, -- force all horizontal splits to go below current window
set splitright " = true, -- force all vertical splits to go to the right of current window
set tabstop=2 ", -- insert 2 spaces for a tab
set textwidth=100
set timeoutlen=1000 ", -- time to wait for a mapped sequence to complete (in milliseconds)
set title " = true, -- set terminal title
set updatetime=100 ", -- faster completion (4000ms default)
set wildmenu " display all matching files
set wrap " = true, -- turn on line wrapping
set wrapmargin=4 ", -- wrap lines when coming within n characters from side
" set noshowmode " we don't need to see things like -- INSERT -- anymore
" undo, swap
set noundofile " no undo file
set nobackup nowritebackup
set noswapfile
" status line
set laststatus=2 " show the status line all the time
set statusline=%F%m%r%h%w%=\ %4Y\ %4{&ff}\ %4l,%v\ %4p%%
" cursor
set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" netrw
let g:netrw_banner=0 " disable banner
let g:netrw_browser_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" key mapping
map Q gq " don't use Ex mode, use Q for formatting
nmap <silent><leader>l :ls<CR>
" nmap <silent><C-b> :edit .<CR> " open netrw
nmap <C-l> :b<Space>
nmap <C-p> :find<Space>
" use alt+hjkl to move between split/vsplit panels
nmap <silent> ˙ <C-w>h
nmap <silent> ∆ <C-w>j
nmap <silent> ˚ <C-w>k
nmap <silent> ¬ <C-w>l
" resize
nmap <silent> ≥ :vertical resize +5<CR> " alt+.
nmap <silent> ≤ :vertical resize -5<CR> " alt+,
nmap <silent> ¯  :res -5<CR>
nmap <silent> ˘ :res +5<CR>
nmap <silent> √ :vs<CR>
nmap <silent> † :split<CR>
" surround
vmap <silent><leader>" c"<Esc>pi<Right>"<Esc><Right>
vmap <silent><leader>' c'<Esc>pi<Right>'<Esc><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
vmap <silent><leader>[ c[<Esc>pi<Right>]<Esc><Right>
vmap <silent><leader>{ c{<Esc>pi<Right>}<Esc><Right>
vmap <silent><leader>` c`<Esc>pi<Right>`<Esc><Right><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
vmap <silent><leader>( c(<Esc>pi<Right>)<Esc><Right>
" disable
nmap <silent> <Up> <NOP>
nmap <silent> <Down> <NOP>
nmap <silent> <Left> <NOP>
nmap <silent> <Right> <NOP>
" bind errored combinations
command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Wqa wqa
" call terminal commands
command! Ga !git add .
" file management
nmap <silent> ,bda :bufdo bd<CR> " -- close all, except current
" movements
nmap <silent> <C-k> Vd2kp " move line up
nmap <silent> <C-j> Vdp " move line down
" snippets
nmap <silent> ,lg :-1read /etc/dotfiles/vim/snippets/console_import.tsx<CR>1jf)i
nmap <silent> ,rf :.-1read /etc/dotfiles/vim/snippets/react_function.tsx<CR>2jfCs
" highlight & syntax
hi Comment gui=italic guifg=#808b96
hi Cursor guibg=white guifg=black
hi Folded guifg=orange
hi Search ctermfg=white ctermbg=red guifg=#444444  guibg=yellow
hi SpellBad guifg=yellow
hi VendorPrefix guifg=#00ffff gui=bold
hi VendorPrefix guifg=red gui=bold
hi VertSplit guifg=#F08080
hi foldBraces gui=bold
hi typescriptType  gui=underline guifg=#b0ed0c   ctermfg=green cterm=underline
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " highlight conflicts
" Changing the shape of cursor
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
if has("gui_running") " for iTerm
    let &t_SI = "\<Esc>]50;CursorShape=5\x7"
    let &t_SR = "\<Esc>]50;CursorShape=3\x7"
    let &t_EI = "\<Esc>]50;CursorShape=1\x7"
else
    let &t_SI.="\e[6 q" "SI = INSERT mode
    let &t_SR.="\e[4 q" "SR = REPLACE mode
    let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
endif
" fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_preview_window = []
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" fzf-specific maps
nmap <silent> <C-p> :GFiles<CR>
nmap <silent> <C-a> :Files<CR>
nmap <silent> <C-l> :Buffer<CR>
nmap <silent> <C-f> :Rg<CR>
nmap <silent> <leader>f :Ag<CR>
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '/etc/dotfiles/nvim/preview.sh {}']}, <bang>0)
" coc
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
nmap <leader>rn <Plug>(coc-rename)
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
nmap <C-i> <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

nmap <silent> b] :BufferLineCycleNext<CR>
nmap <silent> b[ :BufferLineCyclePrev<CR>
nmap <silent> <C-d> :Bdelete<CR>
nmap <silent> ,f :NERDTreeFind<CR>
nmap <silent> ,r :NERDTreeRefresh<CR>
nmap <silent> <C-b> :NERDTreeToggle<CR>
nmap <silent> ,bl :Git blame<CR>
nmap <silent> ,gf :Gvdiffsplit<CR>


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors " true, -- set term gui colors (most terminals support this)
endif

" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

call plug#begin('/etc/vim/plugged')
Plug 'tpope/vim-surround'
Plug 'sakshamgupta05/vim-todo-highlight'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'machakann/vim-highlightedyank'

Plug 'tomasiser/vim-code-dark'

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'

Plug 'Yggdroot/indentLine' " display the indention levels with thin vertical lines
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'RRethy/vim-hexokinase'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

" coc-nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html'
  \ ]
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
let g:highlightedyank_highlight_duration = 100
let g:indentLine_char_list = ['│']
let g:Hexokinase_highlighters = ['backgroundfull']

let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 40
let g:NERDTreeChDirMode = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:WebDevIconsConcealNerdtreeBrackets = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFllName = 1 " highlights the folder name
" let g:NERDTreeIgnore = {"^\~$[[dir]]", "^\.git$[[dir]]","^\.o$[[file]]", "^\.pyc$[[file]]", "^\.DS_Store$[[file]]"}

let g:brown = "905532"
let g:aqua =  "3AFFDB"
let g:blue = "689FB6"
let g:darkBlue = '000444'
let g:purple = "834F79"
let g:lightPurple = "834F79"
let g:red = "AE403F"
let g:beige = "F5C06F"
let g:yellow = "F09F17"
let g:orange = "D4843E"
let g:darkOrange = "F16529"
let g:pink = "CB6F6F"
let g:salmon = "EE6E73"
let g:green = "8FAA54"
let g:lightGreen = "31B53E"
let g:white = "FFFFFF"
let g:rspec_red = 'FE405F'
let g:gitignore = 'F54D27'
let g:react = '08B6CE'
let g:type_script = '398AD7'

let g:NERDTreeExactMatchHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = 'F54D27' " -- sets the color for .gitignore files

let g:NERDTreeExtensionHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = '398AD7'
let g:NERDTreeExtensionHighlightColor['tsx'] = '08B6CE'
let g:NERDTreeExtensionHighlightColor['jsx'] = '08B6CE'
let g:NERDTreePatternMatchHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor[".*_spec\.rb$"] = rspec_red
let g:NERDTreeExtensionHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = type_script
let g:NERDTreeExtensionHighlightColor['tsx'] = react
let g:NERDTreeExtensionHighlightColor['jsx'] = react

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

let g:codedark_italics=1

let g:lightline = {
      \ 'colorscheme': 'codedark',
      \ }

colorscheme codedark

let g:todo_highlight_config = {
      \ 'TODO': {
      \   'gui_fg_color': '#444444',
      \   'gui_bg_color': '#9ac427',
      \   'cterm_fg_color': 'white',
      \   'cterm_bg_color': '214'
      \ },
      \ 'FIXME': {
      \   'gui_fg_color': '#ffffff',
      \   'gui_bg_color': '#f542b6',
      \   'cterm_fg_color': 'white',
      \   'cterm_bg_color': '204'
      \ },
      \   'REVIEW': {},
      \   'NOTE': {
      \     'gui_fg_color': '#ffffff',
      \     'gui_bg_color': '#ffbd2a',
      \     'cterm_fg_color': 'white',
      \     'cterm_bg_color': '214'
      \   },
      \   'OPTIMIZE': {},
      \ }
