return {
  'vonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    require('lspconfig').lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim",
            },
          },
        },
      },
    })
  end
}
