local opt = vim.opt

-- line numbers

opt.number = true
opt.relativenumber = true

-- tabs and spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")


opt.iskeyword:append("-")