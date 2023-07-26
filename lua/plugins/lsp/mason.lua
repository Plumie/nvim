return {
  'williamboman/mason.nvim',
  ['do'] = ':MasonUpdate',
  config = function()
    require("mason").setup()
  end
}
