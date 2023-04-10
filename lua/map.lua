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

vim.keymap.set('n', '<A-k>', 'yyddkP', {silent = true})
vim.keymap.set('n', '<A-j>', 'yyddp', {silent = true})

vim.keymap.set('n', 'vs', ':vs<CR><C-w>l', {noremap = true, silent = true})

vim.keymap.set('v', '<Tab>', '>><Esc>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<S-Tab>', '<<<Esc>gv', {noremap = true, silent = true})


vim.cmd([[
  xnoremap il g_o^
  onoremap il :normal vil<CR>
  xnoremap al $o^
  onoremap al :normal val<CR>

  autocmd TabClosed * tabprevious
]])

vim.keymap.set('v', '<leader>cc', ':Chat completion<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ce', ':Chat code_edit ',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>cx', ':Chat explain<CR>',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>cd', ':Chat doc<CR>',  {noremap = true, silent = true}) 
vim.keymap.set('v', '<leader>co', ':Chat opt<CR>',  {noremap = true, silent = true})
vim.keymap.set('v', '<leader>ct', ':Chat tests<CR>',  {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ca', ':Chat ',  {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'gh', '<cmddiffget //2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<cmddiffget //3<CR>', { noremap = true, silent = true })
