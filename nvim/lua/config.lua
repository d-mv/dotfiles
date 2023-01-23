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
            return require("packer.util").float {border = "rounded"}
        end
    }
}

-- Install your plugins here
return packer.startup(function(use)
    -- Plugin manager
    use {'wbthomason/packer.nvim'}

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
            {'neovim/nvim-lspconfig'}, -- Required
            {'williamboman/mason.nvim'}, -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'}, -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'}, -- Optional
            {'hrsh7th/cmp-path'}, -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'}, -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'}, -- Required
            {'rafamadriz/friendly-snippets'} -- Optional
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
    use "github/copilot.vim" -- github copilot
    use "RRethy/vim-illuminate" -- automatically highlighting other uses of the word under the cursor
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim" -- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    -- syntax
    use "p00f/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring" -- setting the commentstring based on the cursor location in a file
    use "windwp/nvim-ts-autotag" -- use treesitter to autoclose and autorename html tag
    use "nvim-treesitter/nvim-treesitter-textobjects" -- syntax aware text-objects, select, move, swap, and peek support

    use 'tpope/vim-surround' -- quoting/parenthesizing made simple
    use 'machakann/vim-highlightedyank'
    use 'Raimondi/delimitMate' --  provides insert mode auto-completion for quotes, parens, brackets, etc.
    --[[ use 'RRethy/vim-hexokinase' ]]
    use "NvChad/nvim-colorizer.lua" -- high-performance color highlighter
    -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    vim.opt.termguicolors = true
    -- vim.cmd('colorscheme tokyonight')
    vim.cmd('colorscheme kanagawa')

    vim.cmd [[
augroup _lsp
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx :EslintFixAll
augroup end

     ]]

    -- Learn the keybindings, see :help lsp-zero-keybindings
    -- Learn to configure LSP servers, see :help lsp-zero-api-showcase
    local lsp = require('lsp-zero')
    lsp.preset('recommended')

    -- (Optional) Configure lua language server for neovim
    -- lsp.nvim_workspace()

    lsp.setup()
    require('Comment').setup()
end)
