return {
	'abecodes/tabout.nvim',
	lazy = true,
	event = 'InsertEnter *',

	config = function()
		require('tabout').setup({
			tabkey = 'jl'
		})
	end
}
