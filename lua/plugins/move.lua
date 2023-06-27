return {
	'echasnovski/mini.move',
	lazy = true,
	event = 'BufReadPre',

	init = function()
		require('mini.move').setup({
      options = {
        reindent_linewise = false,
      }
    })
	end,
}
