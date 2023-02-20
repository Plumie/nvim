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

-- Switch between buffers with <C-j> and <C-k>
vim.api.nvim_set_keymap('n', '<C-j>', ':bprev<CR>', {noremap = true, silent = true})                                                                            
vim.api.nvim_set_keymap('n', '<C-k>', ':bnext<CR>', {noremap = true, silent = true})

-- Shortcuts for saving and quitting
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

-- Manage windows
vim.api.nvim_set_keymap('n', '<Tab>w', '<C-w>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Tab>wd', ':split<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Tab>wf', ':vsplit<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Tab>h', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<Tab>j', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<Tab>k', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<Tab>l', '<C-w>l', {silent = true})

-- Move lines up and down
vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})

vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})