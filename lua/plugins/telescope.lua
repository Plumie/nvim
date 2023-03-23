require('telescope').setup({
	extensions = {
		project = {
			sync_with_nvim_tree = true,
		}
	}
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').load_extension('project')

vim.api.nvim_set_keymap(
	'n',
	'<leader>fp',
	":lua require'telescope'.extensions.project.project{}<CR>",
	{noremap = true, silent = true}
)