return {
  'tpope/vim-fugitive',
  cmd = {
    'G'
  },
  keys = {
    {
      '<leader>go',
      '<cmd>G<CR>',
      desc = "Open fugitive"
    },
    {
      '<leader>gps',
      '<cmd>G push<CR>',
      desc = "Push commit"
    },
    {
      '<leader>gpl',
      '<cmd>G pull',
      desc = "Pull commit"
    }
  },
}
