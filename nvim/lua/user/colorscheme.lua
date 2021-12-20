vim.cmd [[
try
  colorscheme darkplus
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
