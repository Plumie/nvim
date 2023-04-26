local telescope = require('telescope')

telescope.load_extension('project')

telescope.setup({
	extensions = {
		project = {
			sync_with_nvim_tree = true,
		}
	}
})

local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>p', builtin.find_files, {})

-- Find in files
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})

-- Project navigation
vim.api.nvim_set_keymap(
	'n',
	'<leader>ep',
	":lua require'telescope'.extensions.project.project{}<CR>",
	{noremap = true, silent = true}
)
