local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = "/"
vim.g.maplocalleader = "/"

keymap("n", ",f", ":NERDTreeFind<CR>", opts)
keymap("n", "<C-b>", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-k>", "Vd2kp", opts)
keymap("n", "<C-j>", "Vdp", opts)

-- Using Lua functions
keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<C-l>", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

-- use <tab> for trigger completion and navigate to the next complete item
vim.cmd [[
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
]]
