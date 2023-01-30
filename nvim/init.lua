require "config"
require "options"
-- require "null-ls"
--[[ require "user.plugins" ]]
--[[ require "user.options" ]]
require "user.treesitter"
--[[ require "user.lsp" ]]
--[[ require "user.lsp.null-ls" ]]
--[[ require "user.lualine" ]]
require "user.auto"
require "user.autopairs"
--[[ require "user.cmp" ]]
--[[ require "user.colorscheme" ]]
require "user.colorizer"
require "user.icons"
--[[ require "user.comment" ]]
require "user.gitsigns"
require "user.highlight"
require "user.impatient"
--[[ require "user.indentline" ]]
require("user.lsp.handlers").setup()
require "user.keymaps"
-- require "user.nvim-tree"
--[[ require "user.telescope" ]]
--[[ require "user.gitsigns" ]]

--[[ require "user.heirline" ]]
-- require "user.bufferline"
-- require "user.nerdtree"
-- require "user.whichkey"
