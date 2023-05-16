return {
	'williamboman/mason-lspconfig.nvim',
	lazy = true,
	config = function()
		require('mason-lspconfig').setup({
			ensure_installed = {
				'tsserver',
				'html',
				'cssls'
			}
		})
	end
}

