return {
	'rlane/pounce.nvim',
	lazy = true,
	event = "BufReadCmd",

	config = function()
		vim.keymap.set("n", "s", function() require'pounce'.pounce { } end)
		vim.keymap.set("x", "s", function() require'pounce'.pounce { } end)
		vim.keymap.set("o", "gs", function() require'pounce'.pounce { } end)
		vim.keymap.set("n", "S", function() require'pounce'.pounce { input = {reg="/"} } end)
	end
}
