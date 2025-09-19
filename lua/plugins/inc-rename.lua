return {
  'smjonas/inc-rename.nvim',
  keys = {
    {
      '<leader>lr',
      '<cmd>IncRename<CR>',
      desc = "Incremental rename"
    }
  },
  opts = {
    input_buffer_type = 'dressing'
  }
}
