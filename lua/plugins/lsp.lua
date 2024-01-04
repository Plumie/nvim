return {
  'vonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  priority = 45,
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    vim.diagnostic.config({
      virtual_text = {
        prefix = '●',
      },
      severity_sort = true,
    })

    vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
  end
}
