return {
  'folke/tokyonight.nvim',
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = true,
  init = function()
    vim.cmd.colorscheme "tokyonight-storm"
    vim.cmd [[
			hi LineNr guibg=none guifg=#E1E3E4
      hi cursorlinenr guibg=none guifg=#BA9CF3
      hi cursorline guibg=#31304D
      hi visual guifg=#000000 guibg=#E4E3E1 gui=none
      hi statusline guibg=none
      hi WinSeparator guifg=white
		]]
  end
}
