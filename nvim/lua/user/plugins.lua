local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
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
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

  -- use "akinsho/bufferline.nvim"

  -- colorscheme
  use 'mhartington/oceanic-next'
  --[[ use "LunarVim/darkplus.nvim" ]]
  --[[ use "tomasiser/vim-code-dark" ]]
  --[[ use "mhartington/oceanic-next" ]]
  --[[ use "sainnhe/everforest" ]]
  use "rebelot/kanagawa.nvim"
  --[[ use "Mofiqul/dracula.nvim" ]]
  --[[ use "arcticicestudio/nord-vim" ]]
  --[[ use "cocopon/iceberg.vim" ]]

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- syntax
  use "p00f/nvim-ts-rainbow"
  use "JoosepAlviste/nvim-ts-context-commentstring" -- setting the commentstring based on the cursor location in a file
  use "windwp/nvim-ts-autotag" -- use treesitter to autoclose and autorename html tag
  use "nvim-treesitter/nvim-treesitter-textobjects" -- syntax aware text-objects, select, move, swap, and peek support

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  --[[ use "saadparwaiz1/cmp_luasnip" -- snippet completions ]]
  use "hrsh7th/cmp-nvim-lsp"
  --[[ use "hrsh7th/cmp-emoji" ]]
  --[[ use "zbirenbaum/copilot-cmp" ]]

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use "github/copilot.vim" -- github copilot
  use "RRethy/vim-illuminate" -- automatically highlighting other uses of the word under the cursor
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim" -- renders diagnostics using virtual lines on top of the real line of code

  -- snippets
  --[[ use "L3MON4D3/LuaSnip" --snippet engine ]]
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- explorer
  --[[ use { ]]
  --[[   'kyazdani42/nvim-tree.lua', ]]
  --[[   requires = { ]]
  --[[     'kyazdani42/nvim-web-devicons', -- optional, for file icon ]]
  --[[   }, ]]
  --[[   tag = 'nightly' -- optional, updated every week. (see issue #1193) ]]
  --[[ } ]]

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
    ,
    branch = 'main'
  }
  --[[ use "airblade/vim-gitgutter" ]]

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use "lukas-reineke/indent-blankline.nvim"

  use "nvim-lualine/lualine.nvim"
  --[[ use "rebelot/heirline.nvim" ]]
  use {
      "SmiteshP/nvim-navic",
      requires = "neovim/nvim-lspconfig"
  }

  use "lewis6991/impatient.nvim" -- speed up loading Lua modules in Neovim to improve startup time
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  --[[ use "moll/vim-bbye" ]]
  --[[ use "tybenz/vimdeck" ]]

  use 'tpope/vim-surround' -- quoting/parenthesizing made simple
  use 'machakann/vim-highlightedyank'
  use 'Raimondi/delimitMate' --  provides insert mode auto-completion for quotes, parens, brackets, etc.
  --[[ use 'RRethy/vim-hexokinase' ]]
  use "NvChad/nvim-colorizer.lua" -- high-performance color highlighter
  use "nvim-colortils/colortils.nvim"
  -- use 'tpope/vim-abolish' -- easily search for, substitute, and abbreviate multiple variants of a word

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

  vim.g.Hexokinase_highlighters = { 'backgroundfull' }

end)
