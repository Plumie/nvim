local opt = vim.opt
local o = vim.o

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.wrap = false
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.iskeyword:append("-")
o.hlsearch = true
o.mouse = 'a'
o.undofile = true
o.updatetime = 250
o.timeout = true
o.timeoutlen = 300
o.termguicolors = true
