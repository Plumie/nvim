return {
  'folke/trouble.nvim',
  keys = {
    {
      '<leader>dw',
      '<cmd>TroubleToggle workspace_diagnostics<CR>',
      desc = 'Open workspace diagnostics'
    },
    {
      '<leader>dq',
      '<cmd>TroubleToggle quickfix<CR>',
      desc = 'Open quickfix diagnostics'
    },
  },
  config = true,
}
