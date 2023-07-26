return {
  'VonHeikemen/lsp-zero.nvim',
  priority = 100,
  branch = 'v1.x',
  config = function()
    local lsp = require('lsp-zero').preset()

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
    end)

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

    vim.api.nvim_command('autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})')
  end
}
