vim.keymap.set('n', '<Leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup({ 
	defaults = {
   		preview = {
   			treesitter = false,
   		},
   },
})