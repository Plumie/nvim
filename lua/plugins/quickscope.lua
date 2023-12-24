return {
  'unblevable/quick-scope',
  init = function()
    vim.cmd [[
			let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
		]]
  end,
}
