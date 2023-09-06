return {
  'Wansmer/treesj',
  keys = { '<leader>j' },
  config = function()
    require('treesj').setup({
      use_default_keymaps = false,
    })
    vim.keymap.set('n', '<leader>j', ':TSJToggle<CR>', { noremap = true })
  end,
}
