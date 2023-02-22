call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'andweeb/presence.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-fugitive'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-tree.lua'
Plug 'kylechui/nvim-surround'
Plug 'romgrk/barbar.nvim'
Plug 'mattn/emmet-vim'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

call plug#end()

set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber

set updatetime=300
set signcolumn=yes

if (has("termguicolors"))
  set termguicolors
endif

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
