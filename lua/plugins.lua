local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('folke/tokyonight.nvim', {branch = 'main' })
Plug('goolord/alpha-nvim')
Plug('eandrju/cellular-automaton.nvim')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('echasnovski/mini.pairs')
Plug('alvan/vim-closetag')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('zbirenbaum/copilot.lua')
Plug('nvim-telescope/telescope.nvim', {tag = '0.1.1' })
Plug('nvim-lua/plenary.nvim')
Plug('unblevable/quick-scope')
Plug('RRethy/vim-illuminate')

Plug('rlane/pounce.nvim')
Plug('tpope/vim-fugitive')
Plug('kylechui/nvim-surround')
Plug('numToStr/Comment.nvim')
Plug('nvim-telescope/telescope-project.nvim')
Plug('lewis6991/gitsigns.nvim')
Plug('Wansmer/treesj')

Plug('christoomey/vim-tmux-navigator')
Plug('michaeljsmith/vim-indent-object')
Plug("MunifTanjim/nui.nvim")
Plug("dpayne/CodeGPT.nvim")
Plug('ThePrimeagen/harpoon')

Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim', {['do'] = ':MasonUpdate'})
Plug('williamboman/mason-lspconfig.nvim')
Plug('yioneko/nvim-cmp')
-- Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v1.x'})
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('rafamadriz/friendly-snippets')
Plug('onsails/lspkind.nvim')

vim.call('plug#end')

vim.g["codegpt_openai_api_key"] = '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'

vim.g["closetag_filenames"] = '*.html,*.xhtml,*.phtml,*.twig'

vim.cmd[[
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#f000ff' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#0fffff' gui=underline ctermfg=81 cterm=underline
]]

require('plugins/alpha')
require('plugins/harpoon')
require('plugins/blankline')
require('plugins/cellular-automaton')
require('plugins/comment')
require('plugins/copilot')
require('plugins/fugitive')
require('plugins/gitsigns')
require('plugins/lualine')
require('plugins/nvim-web-devicons')
require('plugins/surround')
require('plugins/telescope')
require('plugins/treesitter')
require('plugins/nvim-tree')
require('plugins/theme')
require('plugins/lsp')
require('plugins/autopairs')
require('plugins/treesj')
require('plugins/pounce')
