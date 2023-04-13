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
--   suggest_lsp_servers = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require('lspconfig').html.setup({
  filetypes = { 'html', 'twig' },
})

require('lspconfig').emmet_ls.setup({
  filetypes = { 'html', 'twig', 'javascriptreact'},
})

lsp.setup()

local ls = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load {}
ls.filetype_extend('twig', { 'html', 'emmet' })

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
})

vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
