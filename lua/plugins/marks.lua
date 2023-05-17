return {
	'chentoast/marks.nvim',
	lazy = true,
	event = 'BufReadPre',

	config = function()
		require('marks').setup()
	end
}
