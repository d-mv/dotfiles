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
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "LunarVim/darkplus.nvim"
  use "scrooloose/nerdtree"
  use "tiagofumo/vim-nerdtree-syntax-highlight"
  use { "tpope/vim-fugitive", cmd = { 'Gstatus', 'Gblame', 'Gdiff', 'Gdiffsplit', 'Gbrowse' } }
  use "airblade/vim-gitgutter"
  use 'tomtom/tcomment_vim' -- universal comment vim-plugin that also handles embedded filetypes
  use 'tpope/vim-surround' -- quoting/parenthesizing made simple
  use 'machakann/vim-highlightedyank'
  use 'RRethy/vim-hexokinase'
  use 'kshenoy/vim-signature'  -- plugin to place, toggle and display marks
  use 'Raimondi/delimitMate' --  provides insert mode auto-completion for quotes, parens, brackets, etc.
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production', ft = {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html' } }
  -- use 'joegesualdo/jsdoc.vim'
  -- use 'styled-components/vim-styled-components'
  use 'cespare/vim-toml'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  vim.g.coc_global_extensions = {
						 'coc-actions',
						 'coc-css',
						 'coc-cssmodules',
						 'coc-eslint',
						 'coc-elixir',
						 'coc-git',
						 'coc-html',
						 'coc-jest',
						 'coc-json',
						 'coc-prettier',
						 'coc-rust-analyzer',
						 'coc-snippets',
						 'coc-spell-checker',
						 'coc-docthis',
						 'coc-stylelintplus',
						 'coc-svg',
						 'coc-toml',
						 'coc-tsserver',
						 'coc-webpack',
						 'coc-yaml',
						 'coc-yank'
						 }

  vim.g.indentLine_char = '│'
  vim.g.rustfmt_autosave = 1
  vim.g.Hexokinase_highlighters = {'backgroundfull'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)


