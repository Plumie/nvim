call plug#begin(stdpath('config') . '/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'goolord/alpha-nvim',
Plug 'eandrju/cellular-automaton.nvim',
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-lua/plenary.nvim'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-fugitive'
Plug 'kylechui/nvim-surround'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/vimux'
Plug 'michaeljsmith/vim-indent-object'

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
inoremap <expr> <c-Y> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

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

map <Leader>vp :VimuxPromptCommand<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" custom line object
xnoremap il g_o^
onoremap il :normal vil<CR>
xnoremap al $o^
onoremap al :normal val<CR>
