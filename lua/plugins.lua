-- AUTOINSTALL
local lazypath = "./lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	require('plugins/theme'),
	require('plugins/autopairs'),
	require('plugins/cellular-automaton'),
	require('plugins/nvim-tree'),
	require('plugins/nvim-web-devicons'),
	require('plugins/alpha'),
	require('plugins/blankline'),
	require('plugins/autotag'),
	require('plugins/lualine'),

	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope-project.nvim',
	require('plugins/illuminate'),
	require('plugins/quickscope'),
	require('plugins/pounce'),
	require('plugins/treesitter'),
	require('plugins/telescope'),
	require('plugins/surround'),
	require('plugins/fugitive'),
	require('plugins/comment'),
	require('plugins/copilot'),
	
	'christoomey/vim-tmux-navigator',
	'michaeljsmith/vim-indent-object',
	"MunifTanjim/nui.nvim",
	"dpayne/CodeGPT.nvim",
	require('plugins/treesj'),
	require('plugins/tabout'),
	require('plugins/harpoon'),
	require('plugins/gitsigns'),

	require('plugins/lsp/nvim-lspconfig'),
	require('plugins/lsp/lsp-zero'),
	'onsails/lspkind.nvim',
	'hrsh7th/cmp-nvim-lsp',
	'saadparwaiz1/cmp_luasnip',
	'rafamadriz/friendly-snippets',
	require('plugins/lsp/mason-lspconfig'),
	require('plugins/lsp/mason'),
	require('plugins/lsp/cmp'),
	require('plugins/lsp/luasnip'),
	require('plugins/lsp/tsc'),
})

vim.g["codegpt_openai_api_key"] = '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'
