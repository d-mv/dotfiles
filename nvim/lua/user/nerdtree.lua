-- settings
vim.g.NERDTreeWinPos = 'right'
vim.g.NERDTreeWinSize = 40 
vim.g.NERDTreeChDirMode = 1
vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeHighlightCursorline = 1
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.WebDevIconsConcealNerdtreeBrackets = 1
vim.g.WebDevIconsUnicodeGlyphDoubleWidth = 1
vim.g.WebDevIconsNerdTreeAfterGlyphPadding = ' '
vim.g.WebDevIconsNerdTreeGitPluginForceVAlign = 1

-- highlighting
vim.g.NERDTreeFileExtensionHighlightFullName = 1
vim.g.NERDTreeExactMatchHighlightFullName = 1
vim.g.NERDTreePatternMatchHighlightFullName = 1
vim.g.NERDTreeHighlightFolders = 1 -- enables folder icon highlighting using exact match
vim.g.NERDTreeHighlightFoldersFllName = 1 -- highlights the folder name

-- vim.g.NERDTreeIgnore = {"^\~$[[dir]]", "^\.git$[[dir]]","^\.o$[[file]]", "^\.pyc$[[file]]", "^\.DS_Store$[[file]]"}

-- indicators
--     \ "Modified--  : "✹ ",
--     \ "Staged--    : "✚ ",
--     \ "Untracked-- : "✭ ",
--     \ "Renamed--   : "➜ ",
--     \ "Unmerged--  : "═ ",
--     \ "Deleted--   : "✖ ",
--     \ "Dirty--     : "✗ ",
--     \ "Clean--     : "✔︎ ",
--     \ 'Ignored'   : '☒ ',
--     \ "Unknown--   : "? "

-- vim.g.NERDTreeIndicatorMapCustom = {
--     \ "Modified--  : "",
--     \ "Staged--    : "✚",
--     \ "Untracked-- : "✭",
--     \ "Renamed--   : "➜",
--     \ "Unmerged--  : "═",
--     \ "Deleted--   : "✖",
--     \ "Dirty--     : "",
--     \ "Clean--     : "✔︎",
--     \ 'Ignored'   : "☒",
--     \ "Unknown--   : "?"
--     \ }

-- colors
local brown = "905532"
local aqua =  "3AFFDB"
local blue = "689FB6"
local darkBlue = '000444'
local purple = "834F79"
local lightPurple = "834F79"
local red = "AE403F"
local beige = "F5C06F"
local yellow = "F09F17"
local orange = "D4843E"
local darkOrange = "F16529"
local pink = "CB6F6F"
local salmon = "EE6E73"
local green = "8FAA54"
local lightGreen = "31B53E"
local white = "FFFFFF"
local rspec_red = 'FE405F'
-- local gitignore = 'F54D27'
local type_script = '398AD7'
local react = '08B6CE'

-- what to highlight
vim.cmd "let g:NERDTreeExactMatchHighlightColor = {}" -- this line is needed to avoid error
vim.cmd "let g:NERDTreeExactMatchHighlightColor['.gitignore'] = 'F54D27'" -- sets the color for .gitignore files

vim.cmd "let g:NERDTreeExtensionHighlightColor = {}" -- this line is needed to avoid error
vim.cmd "let g:NERDTreeExtensionHighlightColor['ts'] = '398AD7'"
vim.cmd "let g:NERDTreeExtensionHighlightColor['tsx'] = '08B6CE'"
vim.cmd "let g:NERDTreeExtensionHighlightColor['jsx'] = '08B6CE'"
-- vim.cmd "let g:NERDTreePatternMatchHighlightColor = {}" -- this line is needed to avoid error
-- vim.g.NERDTreePatternMatchHighlightColor[".*_spec\.rb$"] = rspec_red -- sets the color for files ending with _spec.rb"
-- vim.g.NERDTreeExtensionHighlightColor = {} -- this line is needed to avoid error
-- vim.g.NERDTreeExtensionHighlightColor['ts'] = type_script -- sets the color for TS files
-- vim.g.NERDTreeExtensionHighlightColor['tsx'] = react -- sets the color for TSX files
-- vim.g.NERDTreeExtensionHighlightColor['tsx'] = white -- sets the color for TSX files
-- vim.g.NERDTreeExtensionHighlightColor['jsx'] = react -- sets the color for TSX files


-- folder icons
-- vim.g.WebDevIconsUnicodeDecorateFolderNodes = 1"
-- vim.g.DevIconsEnableFoldersOpenClose = 1"
-- vim.g.WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '"
-- vim.g.DevIconsDefaultFolderOpenSymbol = ' '"

-- file icons
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ﯤ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['log'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['erb'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['slim'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['scss'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sass'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['coffee'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rb'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pub'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['crt'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pem'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ca'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['key'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['csr'] = ''
--
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.ts'] = 'ﭧ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.js'] = 'ﭧ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.git'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['yarn.lock'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ' '
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.prettierrc']='ﬥ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.eslint']='ﬥ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['tsconfig.json']=''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.editorconfig']='ﬥ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.config.*']='ﬥ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.vscode'] = ' '
-- -- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols["webpack\."] = 'ﰩ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.route.*']=''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.routes.*']=''
--
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} -- needed
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['ormconfig.js'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env'] = 'ﭩ'
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc'] = ''
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ' '
-- vim.g.WebDevIconsUnicodeDecorateFileNodesExactSymbols['Rakefile'] = ''
--
