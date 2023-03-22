call plug#begin(stdpath('config') . '/plugged')

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
Plug 'norcalli/nvim-colorizer.lua'
Plug 'goolord/alpha-nvim',
Plug 'eandrju/cellular-automaton.nvim',
Plug 'lewis6991/gitsigns.nvim'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

setlocal includeexpr=substitute(v:fname,'^@\/','src/','')
hi BufferTabpageFill guibg=gray
set termguicolors

nnoremap <SPACE> <Nop>
let mapleader=" "

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

xmap <leader>af  <Plug>(coc-format-selected)
nmap <leader>af  <Plug>(coc-format-selected)

" GoTo code navigation
nmap <silent> <leader>ad <Plug>(coc-definition)
nmap <silent> <leader>at <Plug>(coc-type-definition)
nmap <silent> <leader>ai <Plug>(coc-implementation)
nmap <silent> <leader>ar <Plug>(coc-references)
nmap <silent> <leader>aa <Plug>(coc-codeaction-selected)
nnoremap <silent> <leader>ak :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

autocmd BufReadPost,FileReadPost * normal zR

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


