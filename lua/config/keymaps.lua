local default = { noremap = true, silent = true }
local keymap = vim.keymap

-- Prevent X from yanking to clipboard
keymap.set('n', 'x', '"_x', default)

-- Delete every lines in a file
keymap.set('n', 'DD', 'ggVGd', default)

-- Buffer management
-- keymap.set('n', '<leader>q', ':bdelete<CR>', default)
keymap.set('n', '<leader>q', ':q<CR>', default)
keymap.set('n', '<leader>Q', ':q!<CR>', default)
keymap.set('n', '<leader>w', ':silent! w!<CR>', default)

-- Window management
keymap.set('n', 'vs', ':vs<CR><C-w>l', default)
keymap.set('n', 'vd', ':split<CR><C-w>j', default)

-- Scroll and center
keymap.set('n', '<C-d>', '<C-d>zz', default)
keymap.set('n', '<C-u>', '<C-u>zz', default)

-- Indentation
keymap.set('v', '<Tab>', '>><Esc>gv', default)
keymap.set('v', '<S-Tab>', '<<<Esc>gv', default)

-- Get old pasted text
keymap.set('n', 'gp', '`[v`]', default)

-- JK
keymap.set('i', 'jk', '<Esc>', default)

-- Remove search highlight
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
