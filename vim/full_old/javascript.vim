" >>> JavaScript support setup
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'nikvdp/ejs-syntax'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install', 'for': g:javascript_filetypes } " See import cost of javascript deps
Plug 'liuchengxu/vista.vim'
Plug 'othree/es.next.syntax.vim' " ES.Next syntax for Vim
Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax for Vim
Plug 'MaxMEllon/vim-jsx-pretty' " [Vim script] JSX syntax pretty highlighting for vim.
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript syntax highlight
Plug 'peitalin/vim-jsx-typescript', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript JSX syntax highlight
Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript', 'javascript.jsx'] } " Inproved JSX syntax
