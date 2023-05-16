return {
	'L3MON4D3/LuaSnip',
	lazy = true,
	event = 'InsertEnter *',
	dependencies = {
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},
	config = function()
		local ls = require 'luasnip'
		require('luasnip.loaders.from_vscode').lazy_load {}
		ls.filetype_extend('twig', { 'html', 'emmet' })
	end
}
