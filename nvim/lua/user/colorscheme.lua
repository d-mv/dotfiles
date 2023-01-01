vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1
vim.g.transparent_background = 1 -- transparent background(Default: false)
vim.g.italic_comments = 1 -- italic comments(Default: true)
vim.g.italic_keywords = 1 -- italic keywords(Default: true)
vim.g.italic_functions = 1 -- italic functions(Default: false)
vim.g.italic_variables = 1 -- italic variables(Default: false)
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1
-- vim.g.everforest_background = 'hard'

vim.g.dracula_show_end_of_buffer = true
vim.g.dracula_transparent_bg = true
vim.g.dracula_lualine_bg_color = "#44475a"
vim.g.dracula_italic_comment = true

vim.g.codedark_italics = 1

require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = { italic = true },
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = { italic = true },
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    colors = {},
    overrides = {},
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})

vim.opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})

vim.cmd [[

  let g:everforest_background = 'hard'
  let g:everforest_better_performance = 1
  let g:everforest_disable_italic_comment=1

try
  " colorscheme dracula
  " colorscheme nord
  " colorscheme codedark
  " colorscheme darkplus
  " colorscheme OceanicNext
  " colorscheme everforest
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
