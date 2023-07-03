require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls", "rust_analyzer", "cssmodules_ls", "dockerls",
        "docker_compose_language_service", "html", "jsonls", "tsserver",
        "marksman", "rome", "stylelint_lsp", "taplo", "vimls", "yamlls"
    }
}
