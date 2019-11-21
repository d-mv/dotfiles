" >>> JavaScript support setup
" Plug 'kern/vim-es7' " Vim JavaScript ES6 + ES7 syntax with Flow support
" Plug 'pangloss/vim-javascript' " Vastly improved Javascript indentation and syntax support in Vim
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'nikvdp/ejs-syntax'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx','typescript','typescript.tsx']  } " Syntax for JavaScript libraries
Plug 'othree/es.next.syntax.vim' " ES.Next syntax for Vim
Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax for Vim
Plug 'MaxMEllon/vim-jsx-pretty' " [Vim script] JSX syntax pretty highlighting for vim. 

" >>>> options
" let g:flow#enable = 1 " enable/disable Flow
