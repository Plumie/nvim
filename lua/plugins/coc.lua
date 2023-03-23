vim.cmd([[
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

	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
