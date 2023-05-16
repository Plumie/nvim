return {
	'neovim/nvim-lspconfig',
	lazy = true,
	event = 'BufReadPre',
	
	config = function()
		require('lspconfig').html.setup({
			filetypes = { 'html', 'twig', 'vue' },
		})

		require('lspconfig').emmet_ls.setup({
			filetypes = { 'html', 'twig', 'javascriptreact'},
		})
	end
}
