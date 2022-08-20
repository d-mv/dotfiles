syntax on
filetype plugin on
set autoindent
set autoread
set backspace=2 " allow backspace over everything
set clipboard=unnamed
set cmdheight=1 ", -- more space in the neovim command line for displaying messages
set colorcolumn=+0
set complete=.,w,b,u,U,t,i,d
set completeopt=menu,menuone,preview,popup " mostly just for cmp
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
set ignorecase " = true,
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
nmap <silent> ≥ :vertical resize +5<CR>
nmap <silent> ≤ :vertical resize -5<CR>
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
nmap <silent> ,lg :-1read $HOME/.dotfiles/nvim/snippets/console_import.tsx<CR>1jf)i
nmap <silent> ,rf :.-1read ~/.dotfiles/nvim/snippets/react_function.tsx<CR>2jfCs
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
" TODO  there is something todo
" HELP  there is something
" FIXME  something
" NOTE  some
" OPTIMIZE some
hi Fixme guibg=#f542b6 guifg=#444444 gui=bold
hi Tod guibg=#9ac427 guifg=#444444 gui=bold ctermfg=yellow
hi Note guibg=#f542b6 gui=bold
hi Optimize guifg=#9ac427 gui=bold ctermfg=yellow
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " highlight conflicts
augroup myNote
  autocmd!
  autocmd Syntax * syntax match myNote /\v\_.<(NOTE)\s/ containedin=.*Comment
augroup END
augroup myFixme
  autocmd!
  autocmd Syntax * syntax match myFixme /\v\_.<(FIXME)\s/ containedin=.*Comment
augroup END
augroup myOptimize
  autocmd!
  autocmd Syntax * syntax match myOptimize /\v\_.<(OPTIMIZE)\s/ containedin=.*Comment
augroup END
augroup myTodo
  autocmd!
  autocmd Syntax * syntax match myTodo /\v\_.<(TODO|HELP)\s/ containedin=.*Comment,vimCommentTitle
  " autocmd Syntax * syntax match myTodo /\v\_.<(TODO|HELP).*/hs=s+1 containedin=.*Comment
augroup END
highlight link myTodo Tod
highlight link myFixme Fixme
highlight link myNote Note
highlight link myOptimize Optimize
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
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.dotfiles/nvim/preview.sh {}']}, <bang>0)
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
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
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

source ~/.dotfiles/vim/plugins.vim
source ~/.dotfiles/vim/nerdtree.vim

