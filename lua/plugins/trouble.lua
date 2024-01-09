return {
  'folke/trouble.nvim',
  keys = {
    {
      '<leader>dow',
      '<cmd>TroubleToggle workspace_diagnostics<CR>',
      desc = 'Open workspace diagnostics'
    },
    {
      '<leader>doq',
      '<cmd>TroubleToggle quickfix<CR>',
      desc = 'Open quickfix diagnostics'
    },
  },
  config = true,
}
