return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup({
       buf_options = {
        buflisted = false
      },
      view_options = {
        show_hidden = true,
      },
    })

    vim.keymap.set('n', '<Leader>eo', ':Oil<CR>', {})
  end
}
