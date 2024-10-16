return {
  'folke/tokyonight.nvim',
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
 },
  init = function()
    vim.cmd [[
      colorscheme tokyonight-night
      hi LineNr guibg=none guifg=#E1E3E4
		]]
  end
}
