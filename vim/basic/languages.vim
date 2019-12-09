" >>>> Language support for basic version
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'ElmCast/elm-vim', {'for': 'elm'} " Elm
Plug 'othree/html5.vim', {'for':'html'}
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] + g:javascript_filetypes }
Plug 'tpope/vim-dotenv', { 'for': 'env' }
Plug 'othree/es.next.syntax.vim' " ES.Next syntax for Vim
Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax for Vim
Plug 'MaxMEllon/vim-jsx-pretty' " [Vim script] JSX syntax pretty highlighting for vim.
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript syntax highlight
Plug 'peitalin/vim-jsx-typescript', { 'for': [ 'typescript', 'typescript.tsx' ] } " Typescript JSX syntax highlight
Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript', 'javascript.jsx'] } " Inproved JSX syntax
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] } " Better markdown support
Plug 'cespare/vim-toml', { 'for': 'toml' }  " Toml highlight
Plug 'ap/vim-css-color'
