local options = {
  autoindent = true,
  autoread = true,
  backspace = { "eol", "start", "indent" },
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 0, -- more space in the neovim command line for displaying messages
  colorcolumn = "120",
  complete = { ".", "w", "b", "u", "U", "t", "i", "d" },
  completeopt = { "menu", "menuone", "noselect", "noinsert", "preview" }, -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  cursorline = true, -- highlight the current line
  encoding = "UTF-8",
  expandtab = true, -- convert tabs to spaces
  fileencoding = "utf-8", -- the encoding written to a file
  fillchars = "vert:┃", -- split line - for vsplits
  foldnestmax = 10, --deepest fold is 10 levels
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  hidden = true, -- switch between buffers without error
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true,
  laststatus = 3, -- show the status line all the time
  linebreak = true, -- set soft wrapping
  mat = 2, -- how many tenths of a second to blink
  number = true, -- set numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  pumheight = 20, -- pop up menu height
  re = 0, -- turn off old regex engine
  relativenumber = true, -- set relative numbered lines
  scrolloff = 5, -- is one of my fav
  selection = "exclusive", -- don't select next line symbol
  shell = "$SHELL",
  shiftround = true, -- round indent to a multiple of 'shiftwidth'
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  showbreak = "↪",
  showcmd = true, -- show incomplete commands
  showmatch = true, -- show matching braces
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 1, -- always show tabs
  sidescrolloff = 8,
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  smarttab = true, -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
  so = 7, -- set 7 lines to the cursors - when moving vertical
  softtabstop = 2, -- edit as if the tabs are 4 characters wide
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  tabstop = 2, -- insert 2 spaces for a tab
  termguicolors = true, -- set term gui colors (most terminals support this)
  timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
  title = true, -- set terminal title
  ttyfast = true, -- faster redrawing
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  wildmenu = true,
  wrap = true, -- turn on line wrapping
  wrapmargin = 4, -- wrap lines when coming within n characters from side
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}


for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.diffopt:append "vertical,iwhite,internal,algorithm:patience,hiddenoff"
vim.opt.fillchars:append "fold:·" -- split line - for folds
vim.opt.shortmess:append "c"

vim.opt.mps:append "(:)" -- show matching brackes
vim.opt.mps:append "<:>" -- show matching brackes
vim.opt.mps:append "[:]" -- show matching brackes
vim.opt.mps:append "{:}" -- show matching brackes

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
