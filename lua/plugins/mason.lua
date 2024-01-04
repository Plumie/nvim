return {
  "williamboman/mason.nvim",
  priority = 51,
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
  config = function(_, opts)
    local lsp_zero = require('lsp-zero')

    require('mason').setup(opts)
    lsp_zero.extend_lspconfig()
    require('mason-lspconfig').setup({
      automatic_installation = true,
      handlers = {
        lsp_zero.default_setup,
      },
    })
  end,
}
