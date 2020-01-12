
"""""""""""""""""""""""""""""
"    FZF floating window    "
"""""""""""""""""""""""""""""
" Using the custom window creation function
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" Set floating window to be slightly transparent
set winbl=0 " aesthetics
" Function to create the custom floating window
function! FloatingFZF()
    " creates a scratch, unlisted, new, empty, unnamed buffer
    " to be used in the floating window
    let buf = nvim_create_buf(v:false, v:true)

    " 40% of the height
    let height = float2nr(&lines * 0.4)
    " 70% of the height
    let width = float2nr(&columns * 0.7)
    " horizontal position (centralized)
    let horizontal = float2nr((&columns - width) / 2)
    " vertical position (centralized)
    let vertical = float2nr((&lines - height) / 2)

    let opts = {
                \ 'relative': 'editor',
                \ 'row': vertical,
                \ 'col': horizontal,
                \ 'width': width,
                \ 'height': height
                \ }

    " open the new window, floating, and enter to it
    call nvim_open_win(buf, v:true, opts)
endfunction
