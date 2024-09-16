return {
  'dmmulroy/tsc.nvim',
  config = true,
  opts = {
    use_trouble_qflist = true,
  },
  keys = {
    {
      '<leader>ts',
      ':TSC<CR><CR>',
    },
  }
}
