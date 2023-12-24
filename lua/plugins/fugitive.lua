return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set("n", "<leader>go", ':G<CR>')
    vim.keymap.set("n", "<leader>gps", ':G push<CR>')
    vim.keymap.set("n", "<leader>gpl", ':G pull<CR>')
  end
}
