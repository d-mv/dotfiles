" -- settings
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 40
let g:NERDTreeChDirMode = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:WebDevIconsConcealNerdtreeBrackets = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" -- highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFllName = 1 " highlights the folder name
"
" -- vim.g.NERDTreeIgnore = {"^\~$[[dir]]", "^\.git$[[dir]]","^\.o$[[file]]", "^\.pyc$[[file]]", "^\.DS_Store$[[file]]"}
"
" -- indicators
" --     \ "Modified--  : "✹ ",
" --     \ "Staged--    : "✚ ",
" --     \ "Untracked-- : "✭ ",
" --     \ "Renamed--   : "➜ ",
" --     \ "Unmerged--  : "═ ",
" --     \ "Deleted--   : "✖ ",
" --     \ "Dirty--     : "✗ ",
" --     \ "Clean--     : "✔︎ ",
" --     \ 'Ignored'   : '☒ ',
" --     \ "Unknown--   : "? "
"
" let g:NERDTreeIndicatorMapCustom = {
"      \ "Modified--  : "",
"      \ "Staged--    : "✚",
"      \ "Untracked-- : "✭",
"      \ "Renamed--   : "➜",
"      \ "Unmerged--  : "═",
"      \ "Deleted--   : "✖",
"      \ "Dirty--     : "",
"      \ "Clean--     : "✔︎",
"      \ 'Ignored'   : "☒",
"      \ "Unknown--   : "?"
"      \ }
"
" -- colors
let g:brown = "905532"
let g:aqua =  "3AFFDB"
let g:blue = "689FB6"
let g:darkBlue = '000444'
let g:purple = "834F79"
let g:lightPurple = "834F79"
let g:red = "AE403F"
let g:beige = "F5C06F"
let g:yellow = "F09F17"
let g:orange = "D4843E"
let g:darkOrange = "F16529"
let g:pink = "CB6F6F"
let g:salmon = "EE6E73"
let g:green = "8FAA54"
let g:lightGreen = "31B53E"
let g:white = "FFFFFF"
let g:rspec_red = 'FE405F'
let g:gitignore = 'F54D27'
let g:react = '08B6CE'
let g:type_script = '398AD7'
"
" -- what to highlight
let g:NERDTreeExactMatchHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = 'F54D27' " -- sets the color for .gitignore files

let g:NERDTreeExtensionHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = '398AD7'
let g:NERDTreeExtensionHighlightColor['tsx'] = '08B6CE'
let g:NERDTreeExtensionHighlightColor['jsx'] = '08B6CE'
let g:NERDTreePatternMatchHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor[".*_spec\.rb$"] = rspec_red
let g:NERDTreeExtensionHighlightColor = {} " -- this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = type_script
let g:NERDTreeExtensionHighlightColor['tsx'] = react
let g:NERDTreeExtensionHighlightColor['jsx'] = react
"
" -- folder icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1"
let g:DevIconsEnableFoldersOpenClose = 1"
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '"
let g:DevIconsDefaultFolderOpenSymbol = ' '"
"
" -- file icons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ﯤ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['log'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['erb'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['slim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['scss'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sass'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['coffee'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rb'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pub'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['crt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pem'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ca'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['key'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['csr'] = ''
" --
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.ts'] = 'ﭧ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.js'] = 'ﭧ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.git'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['yarn.lock'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.prettierrc']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.eslint']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['tsconfig.json']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.editorconfig']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.config.*']='ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.vscode'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols["webpack\."] = 'ﰩ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.route.*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.routes.*']=''
" --
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} "-- needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['ormconfig.js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env'] = 'ﭩ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Rakefile'] = ''
