require('manager')

require("lazy").setup({
	'christoomey/vim-tmux-navigator',

	require('plugins/theme'),
	require('plugins/autopairs'),
	require('plugins/cellular-automaton'),
	require('plugins/nvim-tree'),
	require('plugins/nvim-web-devicons'),
	require('plugins/alpha'),
	require('plugins/blankline'),
	require('plugins/marks'),
  require('plugins/lualine'),

	require('plugins/illuminate'),
	require('plugins/quickscope'),
	require('plugins/pounce'),
	require('plugins/treesitter'),
	require('plugins/telescope'),
	require('plugins/surround'),
	require('plugins/fugitive'),
	require('plugins/comment'),
	require('plugins/copilot'),
	
	require('plugins/treesj'),
	require('plugins/harpoon'),
	require('plugins/gitsigns'),
  
	require('plugins/lsp/nvim-lspconfig'),
	require('plugins/lsp/lsp-zero'),
	require('plugins/lsp/mason-lspconfig'),
	require('plugins/lsp/mason'),
	require('plugins/lsp/cmp'),
	require('plugins/lsp/luasnip'),
	require('plugins/lsp/null-ls')
})
