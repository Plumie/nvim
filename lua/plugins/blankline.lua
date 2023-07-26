return {
	'lukas-reineke/indent-blankline.nvim',
	lazy = true,
	event = "BufReadCmd",

	config = function()
		require("indent_blankline").setup()
	end
}
