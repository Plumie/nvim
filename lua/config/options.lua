vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.wrap = false
vim.opt.backspace = "indent,eol,start"
vim.opt.swapfile = false
vim.opt.pumheight = 10
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 0
vim.opt.clipboard = "unnamedplus"
vim.o.hlsearch = true
vim.o.mouse = 'a'
vim.o.undofile = true
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.termguicolors = true

-- Diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
  },
  severity_sort = true,
})

vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
