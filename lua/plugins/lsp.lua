require("mason").setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'html',
    'cssls'
  }
})

local lsp = require('lsp-zero').preset({

  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()
vim.diagnostic.config({
  virtual_text = false, -- Turn off inline diagnostics
})


vim.api.nvim_set_keymap(
  'n', '<Leader>do', ':lua vim.diagnostic.open_float()<CR>', 
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  'n', '<Leader>dn', ':lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  'n', '<Leader>dp', ':lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
