require('treesj').setup({
  use_default_keymaps = false,
})

vim.keymap.set("n", "<Space>j", ":TSJToggle<CR>", { silent = true, remap = true })
