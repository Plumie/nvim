return {
	'tpope/vim-fugitive',
	lazy = true,
	keys = {
		'<leader>go',
		'<leader>gps',
		'<leader>gpl',
		'<leader>gi'
	},
	cmd = {
		'G',
		'G push',
		'G pull',
		'G checkout'
	},
	
	config = function()
		vim.keymap.set("n", "<leader>eg", ':G<CR>')
		vim.keymap.set("n", "<leader>gps", ':G push<CR>')
		vim.keymap.set("n", "<leader>gpl", ':G pull<CR>')
		vim.keymap.set("n", "<leader>gi", ':G checkout<Space>')
	end
}
