local default = { noremap = true, silent = true }

-- Set space as leader key
vim.keymap.set("n", "<Space>", "<Nop>", default)
vim.g.mapleader = " "

-- Prevent bad practices
vim.keymap.set('i', '<Left>', '<Nop>', default)
vim.keymap.set('i', '<Right>', '<Nop>', default)
vim.keymap.set('i', '<Up>', '<Nop>', default)
vim.keymap.set('i', '<Down>', '<Nop>', default)

vim.keymap.set('n', '<Left>', '<Nop>', default)
vim.keymap.set('n', '<Right>', '<Nop>', default)
vim.keymap.set('n', '<Up>', '<Nop>', default)
vim.keymap.set('n', '<Down>', '<Nop>', default)

vim.keymap.set('v', '<Left>', '<Nop>', default)
vim.keymap.set('v', '<Up>', '<Nop>', default)
vim.keymap.set('v', '<Right>', '<Nop>', default)
vim.keymap.set('v', '<Down>', '<Nop>', default)

-- Buffer
vim.keymap.set('n', '<leader>q', ':bdelete!<CR>', default)
vim.keymap.set('n', '<leader>w', ':w!<CR>', default)

-- Navigate and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', default)
vim.keymap.set('n', '<C-u>', '<C-u>zz', default)

-- Split
vim.keymap.set('n', 'vs', ':vs<CR><C-w>l', default)

-- Indentation
vim.keymap.set('v', '<Tab>', '>><Esc>gv', default)
vim.keymap.set('v', '<S-Tab>', '<<<Esc>gv', default)

-- Get old pasted text
vim.keymap.set('n', 'gp', '`[v`]', default)
