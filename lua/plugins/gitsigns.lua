return {
	'lewis6991/gitsigns.nvim',
	lazy = true,
	event = 'BufReadCmd',

	config = function()
		require('gitsigns').setup()
	end
}
