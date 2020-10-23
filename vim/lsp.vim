command Declaration :lua vim.lsp.buf.declaration()
command Definition :lua vim.lsp.buf.definition()
command Hover :lua vim.lsp.buf.hover()
command Implementation :lua vim.lsp.buf.implementation()
command SignatureHelp :lua vim.lsp.buf.signature_help()
command TypeDefinition :lua vim.lsp.buf.type_definition()
command References :lua vim.lsp.buf.references()
command DocumentSymbol :lua vim.lsp.buf.document_symbol()
command WorkspaceSymbol :lua vim.lsp.buf.workspace_symbol()
command Format :lua vim.lsp.buf.formatting_sync(nil, 1000)


    " require'completion'.on_attach()

    " vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    " -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    " vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)

" lsp specific config
lua << EOF
  local nvim_lsp = require('nvim_lsp')

  local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    require'diagnostic'.on_attach()
	  require'nvim_lsp'.rust_analyzer.setup({})

    local opts = { noremap=true, silent=true }
  end

  local servers = {'cssls', 'bashls', 'diagnosticls', 'dockerls', 'flow', 'ghcide', 'gopls', 'hie', 'html', 'intelephense', 'tsserver', 'jsonls', 'pyls', 'rust_analyzer', 'sourcekit', 'vimls', 'vuels'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end
EOF

let g:completion_enable_fuzzy_match = 1
let g:diagnostic_enable_virtual_text = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_ignore_case = 1

" possible value: "length", "alphabet", "none"
let g:completion_sorting = "length"

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" nnoremap <silent> K     <cmd>Hover<CR>

" fix conflict between completion-nvim and autopairs
let g:completion_confirm_key = ""

" inoremap <expr> <cr>    pumvisible() ? "\<Plug>(completion_confirm_completion)" : "\<cr>"
" inoremap <silent><expr> <c> completion#trigger_completion() "map <c-p> to manually trigger completion
