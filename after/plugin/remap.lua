vim.keymap.set('i', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Down>', '<Nop>', {noremap = true, silent = true})

vim.keymap.set('n', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Down>', '<Nop>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})

vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('i', 'kj', '<Esc>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>p', '"0p', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>P', '"0P', {noremap = true, silent = true})

vim.keymap.set('n', '<A-k>', 'yyddkP', {silent = true})
vim.keymap.set('n', '<A-j>', 'yyddp', {silent = true})

vim.keymap.set('n', 'vv', '<C-w>v', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>fr', ':lua vim.lsp.buf.format()<CR>', {noremap = true, silent = true})

vim.keymap.set('v', '<Tab>', '>><Esc>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<S-Tab>', '<<<Esc>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<c-Y>', '<<<Esc>gv', {noremap = true, silent = true})

vim.keymap.set('i', '}', '}', {noremap = false, silent = true})
