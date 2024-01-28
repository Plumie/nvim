local default = { noremap = true, silent = true }
local keymap = vim.keymap

-- Remap leader to space
keymap.set("n", "<Space>", "<Nop>", default)
vim.g.mapleader = " "

-- Prevent X from yanking to clipboard
keymap.set('n', 'x', '"_x', default)

-- Delete every lines in a file
keymap.set('n', 'DD', 'ggVGd', default)

-- Buffer management
keymap.set('n', '<leader>q', ':bdelete!<CR>', default)
keymap.set('n', '<leader>w', ':silent! w<CR>', default)

-- Window management
keymap.set('n', 'vs', ':vs<CR><C-w>l', default)
keymap.set('n', 'vd', ':split<CR><C-w>j', default)
keymap.set("n", "<leader>vh", "<C-w>10>")
keymap.set("n", "<leader>vl", "<C-w>10<")
keymap.set("n", "<leader>vj", "<C-w>10-")
keymap.set("n", "<leader>vk", "<C-w>10+")

-- Scroll and center
keymap.set('n', '<C-d>', '<C-d>zz', default)
keymap.set('n', '<C-u>', '<C-u>zz', default)

-- Indentation
keymap.set('v', '<Tab>', '>><Esc>gv', default)
keymap.set('v', '<S-Tab>', '<<<Esc>gv', default)

-- Get old pasted text
keymap.set('n', 'gp', '`[v`]', default)
keymap.set('n', '<Esc>', '`[v`]', default)

-- Increment and decrement
keymap.set("n", "+", "<C-a>", default)
keymap.set("n", "-", "<C-x>", default)

-- Discipline
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
