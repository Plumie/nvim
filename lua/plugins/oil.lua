return {
  'stevearc/oil.nvim',
  lazy = false,
  opts = {
    buf_options = {
      buflisted = false
    },
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["\\"] = "actions.parent"
    }
  },
  keys = {
    {
      '<leader>eo',
      '<cmd>Oil<CR>',
      desc = "Open oil"
    }
  }
}
