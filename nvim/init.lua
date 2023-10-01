vim.g.mapleader = ','
vim.g.maplocalleader = ','

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git', 'clone', '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git', '--branch=stable', -- latest stable release
        lazypath
    }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth', "hrsh7th/cmp-nvim-lsp", 'L3MON4D3/LuaSnip', {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        }
    }, {
        -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            {'williamboman/mason.nvim', config = true}, {
                'williamboman/mason-lspconfig.nvim',
                config = {
                    ensure_installed = {
                        "lua_ls", "rust_analyzer", "cssmodules_ls", "dockerls",
                        "docker_compose_language_service", "html", "jsonls",
                        "tsserver", "marksman", "rome", "stylelint_lsp",
                        "vimls", "yamlls"
                    }
                }
            }, -- Useful status updates for LSP
            -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
            {'j-hui/fidget.nvim', tag = 'legacy', opts = {}},

            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim'
        }
    }, {
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp'

        }, -- Useful plugin to show you pending keybinds.
        {'folke/which-key.nvim', opts = {}}
    }, {
        -- Adds git releated signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        opts = {
            -- See `:help gitsigns.txt`
            signs = {
                add = {text = '+'},
                change = {text = '~'},
                delete = {text = '_'},
                topdelete = {text = '‾'},
                changedelete = {text = '~'}
            },
            on_attach = function(bufnr)
                vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk,
                               {
                    buffer = bufnr,
                    desc = '[G]o to [P]revious Hunk'
                })
                vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk,
                               {buffer = bufnr, desc = '[G]o to [N]ext Hunk'})
                vim.keymap.set('n', '<leader>ph',
                               require('gitsigns').preview_hunk,
                               {buffer = bufnr, desc = '[P]review [H]unk'})
            end
        }
    },

    -- {
    --     -- Theme inspired by Atom
    --     'navarasu/onedark.nvim',
    --     priority = 1000
    -- }, {
    --     -- Theme inspired by Atom
    --     'sainnhe/edge',
    --     priority = 1000,
    --     config = function() end
    -- },  {
    -- 'sainnhe/everforest'},
    {"lalitmee/cobalt2.nvim",
    -- event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    init = function()
        require("colorbuddy").colorscheme("cobalt2")
    end,},
    {'altercation/vim-colors-solarized'}, {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                -- theme = 'onedark',
                component_separators = '|',
                section_separators = ''
            }
        }
    }, {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help indent_blankline.txt`
        opts = {char = '│', show_trailing_blankline_indent = false}
    }, -- "gc" to comment visual regions/lines
    {'numToStr/Comment.nvim', opts = {}}, -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'}
    }, -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function() return vim.fn.executable 'make' == 1 end
    }, {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'},
        build = ':TSUpdate',

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        -- List of parsers to ignore installing (for "all")
        ignore_install = {"javascript"},

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
            enable = true,

            -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
            -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
            -- the name of the parser)
            -- list of language that will be disabled
            disable = {"c", "rust"},
            -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat,
                                        vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false
        }

    }
    -- { import = 'custom.plugins' },
})

require 'plugins.autoformat'
require 'config.lsp'
require 'config.keymaps'
require 'config.options'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight',
                                                    {clear = true})
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function() vim.highlight.on_yank() end,
    group = highlight_group,
    pattern = '*'
})

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
    defaults = {mappings = {i = {['<C-u>'] = false, ['<C-d>'] = false}}}
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles,
               {desc = '[?] Find recently opened files'})
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,
               {desc = '[ ] Find existing buffers'})

vim.keymap.set("n", "<C-p>", require('telescope.builtin').git_files)
vim.keymap.set("n", "<C-f>", require("telescope.builtin").find_files)
-- keymap("n", "<leader>sh", require("telescope.builtin").help_tags, opts)
vim.keymap.set("n", "<leader>f", require("telescope.builtin").grep_string)
vim.keymap.set("n", "ƒ", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>d", require("telescope.builtin").diagnostics, opts)

vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require(
                                                               'telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false
    })
end, {desc = '[/] Fuzzily search in current buffer'})

-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = {
        "c", "lua", "vim", "vimdoc", "query", "css", "dockerfile", "html",
        "git_config", "gitattributes", "gitcommit", "gitignore", "jsdoc",
        "markdown_inline", "mermaid", "regex", "rust", "toml", "tsx",
        "javascript", "json", "jsonc", "json5", "scss", "typescript", "yaml"
    },

    -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
    auto_install = false,

    highlight = {enable = true},
    indent = {enable = true},
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<M-space>'
        }
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner'
            }
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@class.outer'
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@class.outer'
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@class.outer'
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@class.outer'
            }
        },
        swap = {
            enable = true,
            swap_next = {['<leader>a'] = '@parameter.inner'},
            swap_previous = {['<leader>A'] = '@parameter.inner'}
        }
    }
}

-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
    -- NOTE: Remember that lua is a real programming language, and as such it is possible
    -- to define small helper and utility functions so you don't have to repeat yourself
    -- many times.
    --
    -- In this case, we create a function that lets us more easily define mappings specific
    -- for LSP related items. It sets the mode, buffer and description for us each time.
    local nmap = function(keys, func, desc)
        if desc then desc = 'LSP: ' .. desc end

        vim.keymap.set('n', keys, func, {buffer = bufnr, desc = desc})
    end

    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<C-i>', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references,
         '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols,
         '[D]ocument [S]ymbols')
    nmap('<leader>ws',
         require('telescope.builtin').lsp_dynamic_workspace_symbols,
         '[W]orkspace [S]ymbols')

    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder,
         '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder,
         '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')

    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format',
                                         function(_) vim.lsp.buf.format() end, {
        desc = 'Format current buffer with LSP'
    })
end

local servers = {
    rust_analyzer = {},
    tsserver = {},
    lua_ls = {
        Lua = {
            workspace = {checkThirdParty = false},
            telemetry = {enable = false}
        }
    }
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {ensure_installed = vim.tbl_keys(servers)}

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name]
        }
    end
}

-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
    snippet = {expand = function(args) luasnip.lsp_expand(args.body) end},
    mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'})
    },
    sources = {{name = 'nvim_lsp'}, {name = 'luasnip'}}
}

vim.cmd([[
 let g:edge_enable_italic=1
 let g:edge_style='aura'
 let g:edge_better_performance=1
 " let background='light'
 let g:solarized_italic=1
colorscheme cobalt2
]])
