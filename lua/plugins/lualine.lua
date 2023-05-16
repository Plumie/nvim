return {
	'nvim-lualine/lualine.nvim',
	lazy = true,
	event = 'BufWinEnter',

	config = function()
		local theme = require("lualine.themes.tokyonight")

		theme.normal.c.bg = nil

		require('lualine').setup({
			options = {
				theme = theme 
			},
			sections = {
				lualine_c = {
					{
						'filename',
						path = 1,
					}
				}
			}
		})
	end
}
