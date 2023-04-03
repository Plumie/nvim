require("mason").setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'html',
    'cssls'
  }
})

local lsp = require('lsp-zero').preset({
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lsp.setup()

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
})

vim.api.nvim_set_keymap(
  'n', '<Leader>dl', ':lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  'n', '<Leader>dh', ':lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
