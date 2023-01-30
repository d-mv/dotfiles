-- vim.cmd [[ noremap <silent> <buffer> gr :Trouble lsp_references<CR> ]]
require "config"
require "options"
-- require "null-ls"
--[[ require "user.plugins" ]]
--[[ require "user.options" ]]
require "user.treesitter"
require "user.lsp.handlers"
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
--
require "user.keymaps"
-- require "user.nvim-tree"
--[[ require "user.telescope" ]]
--[[ require "user.gitsigns" ]]

--[[ require "user.heirline" ]]
-- require "user.bufferline"
-- require "user.nerdtree"
-- require "user.whichkey"

-- vim.cmd [[ nnoremap <buffer> <C-i> <cmd>lua vim.lsp.buf.code_action()<CR> ]]
-- vim.cmd [[ nmap <silent> <buffer> gr :Trouble lsp_references<CR> ]]
-- vim.cmd [[ map <silent> <buffer> gr :Trouble lsp_references<CR> ]]

-- local keymap = vim.api.nvim_set_keymap
-- local default_opts = {noremap = true, silent = true}
-- local expr_opts = {noremap = true, expr = true, silent = true}

-- -- Better escape using jk in insert and terminal mode
-- keymap("i", "gr", ":Trouble lsp_references<CR>",
--       --  {noremap = true, silent = true, buffer = true})
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({set_lsp_keymaps = false})

lsp.setup()

vim.cmd [[ nnoremap <buffer> gd :Trouble lsp_definitions<CR> ]]
vim.cmd [[ nnoremap <buffer> gD :Trouble lsp_declarations<CR> ]]
vim.cmd [[ nnoremap <buffer> gi :Trouble lsp_implementations<CR> ]]
vim.cmd [[ nnoremap <buffer> gR :Trouble lsp_references<CR> ]]
vim.cmd [[ nnoremap <buffer> gr :Trouble lsp_references<CR> ]]
vim.cmd [[ nnoremap <buffer> gq :Trouble quickfix<CR> ]]
vim.cmd [[ nnoremap <buffer> gQ :Trouble loclist<CR> ]]
vim.cmd [[ nnoremap <buffer> gW :Trouble lsp_workspace_diagnostics<CR> ]]
vim.cmd [[ nnoremap <buffer> gw :Trouble lsp_document_diagnostics<CR> ]]
vim.cmd [[ nnoremap <buffer> gL :Trouble lsp_document_diagnostics<CR> ]]
vim.cmd [[ nnoremap <buffer> gl :Trouble loclist<CR> ]]
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
