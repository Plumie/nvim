require("toggleterm").setup({
    open_mapping = [[<leader>tt]],
    direction = "float",
    autochdir = true,
    shading_factor = 2,
})
vim.api.nvim_set_keymap('n', '<Leader>tp', '<C-W><C-K>', {silent = true})
