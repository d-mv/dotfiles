vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1
vim.g.transparent_background = 1 -- transparent background(Default: false)
vim.g.italic_comments = 1 -- italic comments(Default: true)
vim.g.italic_keywords = 1 -- italic keywords(Default: true)
vim.g.italic_functions = 1 -- italic functions(Default: false)
vim.g.italic_variables = 1 -- italic variables(Default: false)
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1
vim.g.everforest_background = 'hard'
vim.g.everforest_better_performance = 1
vim.g.everforest_disable_italic_comment=1

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
    -- overrides = {},
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})

-- require("tokyonight").setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   -- light_style = "day", -- The theme is used when the background is set to light
--   -- transparent = false, -- Enable this to disable setting the background color
--   -- terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = true },
--     keywords = { italic = true },
--     functions = {},
--     variables = { bold = true },
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = "dark", -- style for sidebars, see below
--     floats = "dark", -- style for floating windows
--   },
--   sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--   -- day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--   dim_inactive = false, -- dims inactive windows
--   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

--   --- You can override specific color groups to use other groups or a hex color
--   --- function will be called with a ColorScheme table
--   ---@param colors ColorScheme
--   on_colors = function(colors) end,

--   --- You can override specific highlights to use other groups or a hex color
--   --- function will be called with a Highlights and ColorScheme table
--   ---@param highlights Highlights
--   ---@param colors ColorScheme
--   on_highlights = function(highlights, colors) end,
-- })


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
  try
    colorscheme kanagawa
    " colorscheme tokyonight-storm
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]

