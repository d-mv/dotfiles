vim.cmd [[
    hi DiagnosticError guifg=#88088F
    hi DiagnosticWarn guifg=DarkOrange
    hi DiagnosticInfo guifg=Blue
    hi DiagnosticHint guifg=Green
    hi DiagnosticError guifg=red
    hi Comment gui=italic
    hi Cursor guibg=white guifg=black
    hi Folded guifg=orange
    hi Search ctermfg=white ctermbg=red guifg=red  guibg=pink
    hi SpellBad guifg=yellow
    hi VendorPrefix guifg=#00ffff gui=bold
    hi VendorPrefix guifg=red gui=bold
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
]]

-- Indent line highlighting
vim.opt.list = true
