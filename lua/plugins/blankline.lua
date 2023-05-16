return {
	'lukas-reineke/indent-blankline.nvim',
	lazy = true,
	event = "BufReadPre",

	config = function()
		require("indent_blankline").setup()
	end
}
