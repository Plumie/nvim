return {
  'williamboman/mason.nvim',
  ['do'] = ':MasonUpdate',
  lazy = true,
  cmd = { 'Mason', 'MasonUpdate', 'MasonInstall', 'MasonUninstall' },

  config = function()
    require("mason").setup()
  end
}
