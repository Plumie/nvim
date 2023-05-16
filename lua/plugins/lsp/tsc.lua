return {
	'dmmulroy/tsc.nvim',
	lazy = true,
	keys = { '<leader>ts' },

	config = function()
		require('tsc').setup()
		vim.keymap.set('n', '<leader>ts', ':TSC<CR>', {noremap = true, silent = true})
	end
}
