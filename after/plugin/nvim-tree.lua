require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<Leader>ee', ':NvimTreeToggle<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeFocus<CR>', {silent = true})