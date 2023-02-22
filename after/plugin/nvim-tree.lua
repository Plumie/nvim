require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<Leader>eo', ':NvimTreeToggle<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ep', ':NvimTreeFocus<CR>', {silent = true})