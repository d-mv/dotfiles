local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.cmd([[
command! Q q
command! Qall qall
command! W w
command! Wq wq
command! WQ wq
command! Wqa wqa
command! WQa wqa
command! WQall wqa
command! QA qa
command! Ga !git add .
]])

keymap("n", "<C-d>", "y2kp", opts)

-- snippets
keymap("n", ",lg", ":-1read ~/.dotfiles/vim/snippets/console_import.tsx<CR>1jf)i", opts)
keymap("n", ",ri", ":.-1read ~/.dotfiles/vim/snippets/react_import.tsx<CR>o<CR>", opts)
keymap("n", ",rf", ":.-1read ~/.dotfiles/vim/snippets/react_function.tsx<CR>2jfCs", opts)

--
keymap("n", "<c-b>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":NvimTreeFindFileToggle<CR>", opts)

-- trouble
keymap("n", "<leader>t","<cmd>Trouble<cr>", opts)
keymap("n", "<leader>", "<cmd>TodoTrouble<cr>", opts)

-- lsp
keymap("n", "<c-i>","<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<c-]>","<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
keymap("n", "<c-[>","<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
--   ["<leader>lh"] = { "<cmd>lua require('user.lspconfig').toggle_inlay_hints()<cr>", "Hints" },
  --   ["<leader>lf"] = {
  --     "<cmd>lua vim.lsp.buf.format({async = true, filter = function(client) return client.name ~= 'typescript-tools' end})<cr>",
  --     "Format",
  --   },
  --   ["<leader>li"] = { "<cmd>LspInfo<cr>", "Info" },
  --   ["<leader>ll"] = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
  --   ["<leader>lq"] = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
  --   ["<leader>lr"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  -- }

  -- wk.register {
  --   ["<leader>la"] = {
  --     name = "LSP",
  --     a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action", mode = "v" },
  --   },
  -- }

-- telescope
keymap("n", "<c-l>", ":Telescope find_files<CR>", opts)
keymap("n","<c-p>","<cmd>Telescope oldfiles<cr>", opts)
keymap("n","<c-f>", "<cmd>Telescope live_grep<cr>", opts)
--   ["<leader>fs"] = { "<cmd>Telescope grep_string<cr>", "Find String" },
--   ["<leader>bb"] = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
  --   ["<leader>fb"] = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  --   ["<leader>fc"] = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  --   ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find files" },
  --   ["<leader>fp"] = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },
  --   ["<leader>ft"] = { "<cmd>Telescope live_grep<cr>", "Find Text" },
  --   ["<leader>fs"] = { "<cmd>Telescope grep_string<cr>", "Find String" },
  --   ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Help" },
  --   ["<leader>fH"] = { "<cmd>Telescope highlights<cr>", "Highlights" },
  --   ["<leader>fi"] = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
  --   ["<leader>fl"] = { "<cmd>Telescope resume<cr>", "Last Search" },
  --   ["<leader>fM"] = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  --   ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  --   ["<leader>fR"] = { "<cmd>Telescope registers<cr>", "Registers" },
  --   ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  --   ["<leader>fC"] = { "<cmd>Telescope commands<cr>", "Commands" },

  --   ["<leader>go"] = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  --   ["<leader>gb"] = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  --   ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  --   ["<leader>gC"] = {
  --     "<cmd>Telescope git_bcommits<cr>",
  --     "Checkout commit(for current file)",
  --   },

  --   ["<leader>ls"] = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  --   ["<leader>lS"] = {
  --     "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
  --     "Workspace Symbols",
  --   },
  --   ["<leader>le"] = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
