return {
  'folke/tokyonight.nvim',
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require('tokyonight').setup(opts)
    vim.cmd [[
      colorscheme tokyonight-night
    ]]
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='white' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='white' })
  end
}
