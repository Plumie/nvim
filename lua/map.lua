vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = true })
vim.g.mapleader = " "

vim.keymap.set('i', '<Left>', '<Nop>', {noremap = true, silent = true}) 
vim.keymap.set('i', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('i', '<Down>', '<Nop>', {noremap = true, silent = true})

vim.keymap.set('n', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '<Down>', '<Nop>', {noremap = true, silent = true})

vim.keymap.set('v', '<Left>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('v', '<Up>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('v', '<Right>', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('v', '<Down>', '<Nop>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})

vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('i', 'kj', '<Esc>', {noremap = true, silent = true})

vim.keymap.set('n', '<A-u>', 'yyddkP', {silent = true})
vim.keymap.set('n', '<A-d>', 'yyddp', {silent = true})

vim.keymap.set('n', 'vs', ':vs<CR><C-w>l', {noremap = true, silent = true})

vim.keymap.set('v', '<Tab>', '>><Esc>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<S-Tab>', '<<<Esc>gv', {noremap = true, silent = true})

vim.keymap.set('v', '<leader>cc', ':Chat completion<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ce', ':Chat code_edit<space>',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>cx', ':Chat explain<CR>',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>cd', ':Chat doc<CR>',  {noremap = true, silent = true}) 
vim.keymap.set('v', '<leader>co', ':Chat opt<CR>',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ct', ':Chat tests<CR>',  {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ca', ':Chat<space>',  {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'gh', '<cmddiffget //2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<cmddiffget //3<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "s", function() require'pounce'.pounce { } end)
vim.keymap.set("x", "s", function() require'pounce'.pounce { } end)
vim.keymap.set("o", "gs", function() require'pounce'.pounce { } end)
vim.keymap.set("n", "S", function() require'pounce'.pounce { input = {reg="/"} } end)
