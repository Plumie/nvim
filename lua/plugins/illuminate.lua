return {
	'RRethy/vim-illuminate',
	lazy = true,
	event = 'BufReadPre',

	config = function()
		vim.g.Illuminate_delay = 1000
	end,
}
