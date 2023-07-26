return {
  'jose-elias-alvarez/null-ls.nvim',

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.tsc,
      },
    })

    vim.keymap.set("n", "<leader>]", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
  end
}
