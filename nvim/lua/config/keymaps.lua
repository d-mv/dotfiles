local opts = {noremap = true, silent = true}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
-- vim.g.mapleader = "/"
-- vim.g.maplocalleader = "/"

keymap("n", "<C-d>", "y2kp", opts)

keymap("n", "<C-b>", ":NeoTreeFloatToggle<CR>", opts)

-- keymap("n", "<leader>gf", require("telescope.builtin").git_files, opts)
-- keymap("n", "<leader>sf", require("telescope.builtin").find_files, opts)
-- keymap("n", "<leader>sh", require("telescope.builtin").help_tags, opts)
-- keymap("n", "<leader>sw", require("telescope.builtin").grep_string, opts)
-- keymap("n", "<leader>sg", require("telescope.builtin").live_grep, opts)
-- keymap("n", "<leader>sd", require("telescope.builtin").diagnostics, opts)

-- Diagnostic keymaps
-- keymap("n", "[d", vim.diagnostic.goto_prev, opts)
-- keymap("n", "]d", vim.diagnostic.goto_next, opts)
-- keymap("n", "<leader>e", vim.diagnostic.open_float, opts)
-- keymap("n", "<leader>q", vim.diagnostic.setloclist, opts)
