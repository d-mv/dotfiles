" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <C-i>  <Plug>(coc-codeaction-selected)
" nmap <C-i>  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <C-i> <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" use <tab> for trigger completion and navigate to the next complete item
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

nmap <silent> b] :BufferLineCycleNext<CR>
nmap <silent> b[ :BufferLineCyclePrev<CR>

" -- snippets
nmap <silent> ,lg :-1read $HOME/.dotfiles/nvim/snippets/console_import.tsx<CR>1jf)i


" -- use alt+hjkl to move between split/vsplit panels
nmap <silent> ˙ <C-w>h
nmap <silent> ∆ <C-w>j
nmap <silent> ˚ <C-w>k
nmap <silent> ¬ <C-w>l

nmap <silent> ≥ :vertical resize +5<CR>
nmap <silent> ≤ :vertical resize -5<CR>
nmap <silent> ¯  :res -5<CR>
nmap <silent> ˘ :res +5<CR>
nmap <silent> √ :vs<CR>
nmap <silent> † :split<CR>
"
" -- Jump between hunks
nmap <silent> <C-n> <Plug>(GitGutterNextHunk) " -- git next
nmap <silent> <C-m> <Plug>(GitGutterPrevHunk) " -- git previous
nmap <silent> ,bda :bufdo bd<CR> " -- close all, except current
nmap <silent> <C-k> Vd2kp
nmap <silent> <C-j> Vdp
"
" -- turn off keys
nmap <silent> <Up> <NOP>
nmap <silent> <Down> <NOP>
nmap <silent> <Left> <NOP>
nmap <silent> <Right> <NOP>
nmap <silent> ,ri :.-1read ~/.dotfiles/nvim/snippets/react_import.tsx<CR>o<CR>
nmap <silent> ,rf :.-1read ~/.dotfiles/nvim/snippets/react_function.tsx<CR>2jfCs
nmap <silent> <C-d> :Bdelete<CR>
nmap <silent> ,f :NERDTreeFind<CR>
nmap <silent> ,r :NERDTreeRefresh<CR>
nmap <silent> <C-b> :NERDTreeToggle<CR>
nmap <silent> ,bl :Git blame<CR>
nmap <silent> ,gf :Gvdiffsplit<CR>
nmap <silent> <C-k> Vd2kp
nmap <silent> <C-j> Vdp

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Wqa wqa
command! Ga !git add .


