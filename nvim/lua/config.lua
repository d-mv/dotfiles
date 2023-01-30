local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim", install_path
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  }
}

-- Install your plugins here
return packer.startup(function(use)
  -- Plugin manager
  use { 'wbthomason/packer.nvim' }

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  use "lewis6991/impatient.nvim" -- speed up loading Lua modules in Neovim to improve startup time

  -- Colorscheme
  -- use {'folke/tokyonight.nvim'}
  use "rebelot/kanagawa.nvim"

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional
      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' } -- Optional
    }

  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    }
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end,
    branch = 'main'
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }

  use "github/copilot.vim" -- github copilot
  use "RRethy/vim-illuminate" -- automatically highlighting other uses of the word under the cursor
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- syntax
  use "JoosepAlviste/nvim-ts-context-commentstring" -- setting the commentstring based on the cursor location in a file
  use "windwp/nvim-ts-autotag" -- use treesitter to autoclose and autorename html tag
  use "nvim-treesitter/nvim-treesitter-textobjects" -- syntax aware text-objects, select, move, swap, and peek support

  use 'tpope/vim-surround' -- quoting/parenthesizing made simple
  use 'machakann/vim-highlightedyank'
  use 'Raimondi/delimitMate' --  provides insert mode auto-completion for quotes, parens, brackets, etc.
  use "NvChad/nvim-colorizer.lua" -- high-performance color highlighter

  vim.opt.termguicolors = true
  -- vim.cmd('colorscheme tokyonight')
  vim.cmd('colorscheme kanagawa')

  vim.cmd [[
      augroup _lsp
        autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx :EslintFixAll
      augroup end
     ]]

  local lsp = require('lsp-zero')

  lsp.preset('recommended')
  lsp.set_preferences({ set_lsp_keymaps = false })
  lsp.setup()

  vim.cmd [[ nnoremap <silent> gd :Trouble lsp_definitions<CR> ]]
  vim.cmd [[ nnoremap <silent> gD :Trouble lsp_declarations<CR> ]]
  vim.cmd [[ nnoremap <silent> gi :Trouble lsp_implementations<CR> ]]
  vim.cmd [[ nnoremap <silent> gR :Trouble lsp_references<CR> ]]
  vim.cmd [[ nnoremap <silent> gr :Trouble lsp_references<CR> ]]
  vim.cmd [[ nnoremap <silent> gq :Trouble quickfix<CR> ]]
  vim.cmd [[ nnoremap <silent> gQ :Trouble loclist<CR> ]]
  vim.cmd [[ nnoremap <silent> gW :Trouble lsp_workspace_diagnostics<CR> ]]
  vim.cmd [[ nnoremap <silent> gw :Trouble lsp_document_diagnostics<CR> ]]
  vim.cmd [[ nnoremap <silent> gL :Trouble lsp_document_diagnostics<CR> ]]
  vim.cmd [[ nnoremap <silent> gl :Trouble loclist<CR> ]]
  vim.cmd [[ nnoremap <silent> <C-i> <cmd>lua vim.lsp.buf.code_action()<CR> ]]
  vim.cmd [[ nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR> ]]
  vim.cmd [[ nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR> ]]
  vim.cmd [[ nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR> ]]
  vim.cmd [[ nnoremap <silent> <leader>f <cmd>lua vim.diagnostic.open_float()<CR> ]]
  vim.cmd [[ nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR> ]]
  vim.cmd [[ nnoremap <silent> ]d <cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR> ]]
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format ( { async = true } )' ]]

  require('Comment').setup()
  require("neo-tree").setup({
    window = {
      position = "right",
      width = 40,
      mapping_options = { noremap = true, nowait = true },
      mappings = { ["o"] = "open" }
    }
  })
  require("todo-comments").setup()
  require("trouble").setup()
end)
