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
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require('lspconfig').html.setup({
  filetypes = { 'html', 'twig', 'vue' },
})

require('lspconfig').emmet_ls.setup({
  filetypes = { 'html', 'twig', 'javascriptreact'},
})

lsp.setup()

local cmp = require('cmp')
local lspkind = require('lspkind')

local blackOrWhiteFg = function(r,g,b) 
  return ((r*0.299 + g*0.587 + b*0.114) > 186) and '#000000' or '#ffffff'
end

cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      return vim_item
    end,
  },
  performance = {
    trigger_debounce_time = 500,
    throttle = 550,
    fetching_timeout = 80,
  },
}

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
