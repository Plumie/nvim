call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'andweeb/presence.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ggandor/leap.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'tpope/vim-fugitive'
Plug 'romgrk/barbar.nvim'
Plug 'kylechui/nvim-surround'
Plug 'navarasu/onedark.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'goolord/alpha-nvim',
Plug 'eandrju/cellular-automaton.nvim',
Plug 'jiangmiao/auto-pairs',
Plug 'lewis6991/gitsigns.nvim'
Plug 'alvan/vim-closetag'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'
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

set updatetime=100
set signcolumn=yes

nnoremap <SPACE> <Nop>
let mapleader=" "

setlocal includeexpr=substitute(v:fname,'^@\/','src/','')

set termguicolors

nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

nnoremap <silent> <leader>fr :lua vim.lsp.buf.format()<CR>

hi BufferTabpageFill guibg=gray
