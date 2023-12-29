return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local lsp_zero = require('lsp-zero')

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    lsp_zero.extend_lspconfig()

    mason_lspconfig.setup({
      automatic_installation = true,
      handlers = {
        lsp_zero.default_setup,
      },
    })
  end,
}
