return {
  'neovim/nvim-lspconfig',
  lazy = true,
  event = 'BufReadCmd',

  config = function()
    require('lspconfig').html.setup({
      filetypes = { 'html', 'twig', 'vue' },
    })

    require('lspconfig').emmet_ls.setup({
      filetypes = { 'html', 'twig', 'javascriptreact' },
    })
  end
}
