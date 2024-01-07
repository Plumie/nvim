vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true

vim.opt.showcmd = true
vim.opt.cmdheight = 0

vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true

vim.opt.pumheight = 10
vim.opt.scrolloff = 10

vim.opt.clipboard = "unnamedplus"
vim.opt.backspace = "start,eol,indent"

vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.wildignore:append({ "*/node_modules/*" })

vim.opt.mouse = ''

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

vim.cmd[[
  command! -bang Q q<bang>
  command! -bang Qa qa<bang>
  command! W w
]]
