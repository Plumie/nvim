require('telescope').load_extension('project')

require('telescope').setup({
	extensions = {
		project = {
			sync_with_nvim_tree = true,
		}
	}
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ep', builtin.find_files, {})
vim.keymap.set('n', '<leader>es', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


vim.api.nvim_set_keymap(
	'n',
	'<leader>ei',
	":lua require'telescope'.extensions.project.project{}<CR>",
	{noremap = true, silent = true}
)
