vim.cmd [[
try
  colorscheme dracula
  " colorscheme darkplus
  " colorscheme OceanicNext
  " colorscheme everforest
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1
vim.g.transparent_background=1        -- transparent background(Default: false)
vim.g.italic_comments=1               -- italic comments(Default: true)
vim.g.italic_keywords=1               -- italic keywords(Default: true)
vim.g.italic_functions=1              -- italic functions(Default: false)
vim.g.italic_variables=1              -- italic variables(Default: false)
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1
vim.g.everforest_background = 'hard'

-- show the '~' characters after the end of buffers
vim.g.dracula_show_end_of_buffer = true
-- use transparent background
vim.g.dracula_transparent_bg = true
-- set custom lualine background color
vim.g.dracula_lualine_bg_color = "#44475a"
-- set italic comment
vim.g.dracula_italic_comment = true
