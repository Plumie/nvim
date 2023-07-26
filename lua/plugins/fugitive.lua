return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set("n", "<leader>eg", ':G<CR>')
    vim.keymap.set("n", "<leader>gps", ':G push<CR>')
    vim.keymap.set("n", "<leader>gpl", ':G pull<CR>')
    vim.keymap.set("n", "<leader>gi", ':G checkout<Space>')
  end
}
