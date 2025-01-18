local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
  },
}

M.servers = {
  lua_ls = {
		filetypes = { "lua" },
	},
  cssls = {
		filetypes = { "css", "scss", "less", "sass", "html" },
	},
  html = {
		filetypes = { "html" },
	},
  tsserver = {
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "html" },
	},
  bashls = {
		filetypes = { "sh", "zsh" },
	},
  jsonls = {
		filetypes = { "json" },
	},
  yamlls = {
		filetypes = { "yaml" },
	},
  marksman = {
		filetypes = { "markdown" },
	},
	cssmodules_ls = {
		filetypes = { "css", "scss", "less", "sass" },
	},
	docker_compose_language_service = {
		filetypes = { "dockerfile", "docker-compose" },
	},
	eslint = {
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
	prettier = {
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
	rust_analyzer = {
		filetypes = { "rust" },
	},
	postcss_ls = {
		filetypes = { "css", "scss", "less", "sass" },
	},
	stylelint_lsp = {
		filetypes = { "css", "scss", "less", "sass" },
	},
	vimls = {
		filetypes = { "vim" },
	},
	toml_ls = {
		filetypes = { "toml" },
	},
	makefiletypes = {
		filetypes = { "make" },
	},
}

function M.config()
  -- local wk = require "which-key"
  -- wk.register {
  --   ["<leader>lI"] = { "<cmd>Mason<cr>", "Mason Info" },
  -- }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = M.servers,
  }
end

return M
