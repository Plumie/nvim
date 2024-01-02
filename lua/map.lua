local default = { noremap = true, silent = true }
local keymap = vim.keymap

-- Set space as leader key
keymap.set("n", "<Space>", "<Nop>", default)
vim.g.mapleader = " "

keymap.set('n', 'x', '"_x', default)

-- Prevent bad practices
keymap.set('i', '<Left>', '<Nop>', default)
keymap.set('i', '<Right>', '<Nop>', default)
keymap.set('i', '<Up>', '<Nop>', default)
keymap.set('i', '<Down>', '<Nop>', default)

keymap.set('n', '<Left>', '<Nop>', default)
keymap.set('n', '<Right>', '<Nop>', default)
keymap.set('n', '<Up>', '<Nop>', default)
keymap.set('n', '<Down>', '<Nop>', default)

keymap.set('v', '<Left>', '<Nop>', default)
keymap.set('v', '<Up>', '<Nop>', default)
keymap.set('v', '<Right>', '<Nop>', default)
keymap.set('v', '<Down>', '<Nop>', default)

-- Buffer
keymap.set('n', '<leader>q', ':bdelete!<CR>', default)
keymap.set('n', '<leader>w', ':w!<CR>', default)

-- Navigate and center
keymap.set('n', '<C-d>', '<C-d>zz', default)
keymap.set('n', '<C-u>', '<C-u>zz', default)

-- Split
keymap.set('n', 'vs', ':vs<CR><C-w>l', default)
keymap.set('n', 'vd', ':split<CR><C-w>j', default)

-- Indentation
keymap.set('v', '<Tab>', '>><Esc>gv', default)
keymap.set('v', '<S-Tab>', '<<<Esc>gv', default)

-- Get old pasted text
keymap.set('n', 'gp', '`[v`]', default)

keymap.set('n', '<Esc>', '`[v`]', default)
