require('nvim-treesitter.configs').setup({
  ensure_installed = { 'javascript', 'html', 'typescript', 'css' },
  sync_install = false,
  auto_install = true,
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = { "lua" }
  },
  indent = {
    enable = true
  }
})
