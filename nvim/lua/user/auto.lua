-- vim.cmd [[ autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR> ]]
vim.cmd [[
augroup _lsp
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx :EslintFixAll
augroup end
]]
  -- autocmd!
  -- autocmd BufWritePre * lua vim.lsp.buf.formatting()
