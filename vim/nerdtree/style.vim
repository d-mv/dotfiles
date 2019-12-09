" highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" indicators
"     \ "Modified"  : "✹ ",
"     \ "Staged"    : "✚ ",
"     \ "Untracked" : "✭ ",
"     \ "Renamed"   : "➜ ",
"     \ "Unmerged"  : "═ ",
"     \ "Deleted"   : "✖ ",
"     \ "Dirty"     : "✗ ",
"     \ "Clean"     : "✔︎ ",
"     \ 'Ignored'   : '☒ ',
"     \ "Unknown"   : "? "

" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : "☒",
"     \ "Unknown"   : "?"
"     \ }

" colors
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = '000444'
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let s:type_script = '398AD7'
let s:react = '08B6CE'

" what to highlight
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = s:type_script " sets the color for TS files
let g:NERDTreeExtensionHighlightColor['tsx'] = s:react " sets the color for TSX files
let g:NERDTreeExtensionHighlightColor['jsx'] = s:react " sets the color for TSX files

let g:WebDevIconsConcealNerdtreeBrackets = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1

" folder icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose =1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

" file icons
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
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack\.'] = 'ﰩ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.route.*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.routes.*']=''

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['ormconfig.js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env'] = 'ﭩ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Rakefile'] = ''
