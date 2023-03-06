require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<Leader>ee', ':NvimTreeToggle<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>eo', ':NvimTreeFocus<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ep', '<C-W><C-L>', {silent = true})