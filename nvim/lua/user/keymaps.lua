local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
-- vim.g.mapleader = "/"
-- vim.g.maplocalleader = "/"


keymap("n", "<C-d>", "y2kp", opts)


-- snippets
keymap("n", ",lg", ":-1read ~/.dotfiles/vim/snippets/console_import.tsx<CR>1jf)i", opts)
keymap("n", ",ri", ":.-1read ~/.dotfiles/vim/snippets/react_import.tsx<CR>o<CR>", opts)
keymap("n", ",rf", ":.-1read ~/.dotfiles/vim/snippets/react_function.tsx<CR>2jfCs", opts)


-- keymap("n", "<C-d>", ":Bdelete<CR>", opts)

keymap("n", ",f", ":Neotree filesystem reveal right<CR>", opts)
--[[ keymap("n", ",f", ":NvimTreeFindFile<CR>", opts) ]]
keymap("n", ",r", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<C-b>", ":Neotree toggle right<CR>", opts)
--[[ keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts) ]]

--[[ keymap("n", ",bl", ":Gitsigns toggle_current_line_blame<CR>", opts) ]]
keymap("n", ",bl", ":Gitsigns blame_line<CR>", opts)
keymap("n", ",df", ":Gitsigns diffthis<CR>", opts)

keymap("n", "<C-k>", "Vd2kp", opts)
keymap("n", "<C-j>", "Vdp", opts)

-- Using Lua functions
keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<C-l>", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)

-- Bufferline
keymap("n", "b]", ":BufferLineCycleNext<CR>", opts)
keymap("n", "b[", ":BufferLineCyclePrev<CR>", opts)


-- keymap("n", ",r", "<cmd>lua require'lspactions'.rename()<CR>", opts)

vim.cmd([[
command! Q q " Bind :Q to :q
command! Qall qall
command! W w
command! Ga !git add .
]])

-- use alt+hjkl to move between split/vsplit panels
keymap("n", "˙", "<C-w>h", opts)
keymap("n", "∆", "<C-w>j", opts)
keymap("n", "˚", "<C-w>k", opts)
keymap("n", "¬", "<C-w>l", opts)
keymap("n", "≥", ":vertical resize +5<CR>", opts)
keymap("n", "≤", ":vertical resize -5<CR>", opts)

keymap("n", "¯ ", ":res -5<CR>", opts)
keymap("n", "˘", ":res +5<CR>", opts)

keymap("n", "√", ":vs<CR>", opts)
keymap("n", "†", ":split<CR>", opts)

-- Jump between hunks
keymap("n", "<C-n>", "<Plug>(GitGutterNextHunk)", opts) -- git next
keymap("n", "<C-m>", "<Plug>(GitGutterPrevHunk)", opts) -- git previous

-- close all, except current
keymap("n", ",bda", ":bufdo bd<CR>", opts)

keymap("n", "<C-k>", "Vd2kp", opts)
keymap("n", "<C-j>", "Vdp", opts)

-- turn off keys
keymap("n", "<Up>", "<NOP>", opts)
keymap("n", "<Down>", "<NOP>", opts)
keymap("n", "<Left>", "<NOP>", opts)
keymap("n", "<Right>", "<NOP>", opts)
