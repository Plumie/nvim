
-- Prevent arrow keys from moving the cursor in insert mode
vim.keymap.set('i', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Down>', '<Nop>', {noremap = true, silent = true})

-- Prevent arrow keys from moving the cursor in normal mode
vim.keymap.set('n', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Down>', '<Nop>', {noremap = true, silent = true})

-- Stop highlighting search results with <CR>
vim.keymap.set('n', '<CR>', ':noh<CR><CR>', {noremap = true, silent = true})

-- Shortcuts for saving and quitting
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

-- Move lines up and down
vim.keymap.set('n', '<C-j>', '<C-d>zz', {noremap = true, silent = true})
vim.keymap.set('n', '<C-k>', '<C-u>zz', {noremap = true, silent = true})

vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('i', 'kj', '<Esc>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>p', '"0p', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>P', '"0P', {noremap = true, silent = true})

vim.keymap.set('n', '<S-k>', 'yyddkP', {noremap = true, silent = true})
vim.keymap.set('n', '<S-j>', 'yyddp', {noremap = true, silent = true})

vim.keymap.set('n', '<Leader>o', 'o<Esc>k', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>O', 'O<Esc>j', {noremap = true, silent = true})
