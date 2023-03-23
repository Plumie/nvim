require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<Leader>eo', ':NvimTreeToggle<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ef', ':NvimTreeFocus<CR>', {silent = true})
