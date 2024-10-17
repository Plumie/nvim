-- Space as leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.hlsearch = true

-- Remove commandline when not in use
vim.opt.showcmd = true
vim.opt.cmdheight = 0

vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true

vim.opt.pumheight = 10
vim.opt.scrolloff = 10

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.backspace = "start,eol,indent"

vim.opt.cursorline = true

vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.updatetime = 300

vim.opt.mouse = ''

-- Prevent comments from continuing on new line
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
