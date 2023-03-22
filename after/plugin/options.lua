local opt = vim.opt

opt.encoding = 'utf-8'

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.updatetime = 300

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.background = 'dark'
opt.signcolumn = 'yes'

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")
