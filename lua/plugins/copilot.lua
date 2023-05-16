return {
	'zbirenbaum/copilot.lua',
	lazy = true,
	event = 'InsertEnter *',

	config = function()
		require('copilot').setup({suggestion = {auto_trigger = true, keymap = {accept = '<leader><Tab>'}}})
	end
}
