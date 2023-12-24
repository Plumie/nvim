return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').html.setup({
      filetypes = { 'html', 'vue' },
    })

    require('lspconfig').emmet_ls.setup({
      filetypes = { 'html', 'javascriptreact' },
    })
  end
}
