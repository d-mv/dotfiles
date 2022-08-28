-- vim.cmd [[ autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR> ]]
-- autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx :EslintFixAll
-- autocmd BufWritePre * :Format
vim.cmd [[
augroup _lsp
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx :EslintFixAll
augroup end

augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
  augroup END
]]
