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
      if vim_item.kind == 'Color' and entry.completion_item.documentation then
        local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
        if r then
          local color = string.format('%02x', r) .. string.format('%02x', g) ..string.format('%02x', b) 
          local group = 'Tw_' .. color
          if vim.fn.hlID(group) < 1 then 
            vim.api.nvim_set_hl(0, group, {fg = blackOrWhiteFg(r, g, b), bg = '#' .. color}) 
          end
          vim_item.kind = '  '
          vim_item.kind_hl_group = group
          return vim_item
        end
      end

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
