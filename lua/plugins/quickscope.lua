return {
	'unblevable/quick-scope',
	lazy = true,
	event = 'BufReadCmd',

	init = function()
		vim.cmd[[
			let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
			highlight QuickScopePrimary guifg='#0fffff' gui=underline ctermfg=81 cterm=underline
			highlight QuickScopeSecondary guifg='#f000ff' gui=underline ctermfg=155 cterm=underline
		]]
	end,
}
