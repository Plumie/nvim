return {
  'vonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  keys = {
    {
      '<leader>lr',
      '<cmd>lua vim.lsp.buf.rename()<CR>',
      desc = 'Rename symbol'
    },
    {
      '<leader>la',
      '<cmd>lua vim.lsp.buf.code_action()<CR>',
      desc = 'Code action'
    },
    {
      '<leader>lf',
      '<cmd>lua vim.lsp.buf.format()<CR>',
      desc = 'Code format'
    },
    {
      'D',
      '<cmd>lua vim.lsp.buf.type_definition()<CR>',
      desc = 'Code format'
    },
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
