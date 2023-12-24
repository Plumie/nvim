return {
  'nvim-treesitter/nvim-treesitter',
  ['do'] = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'javascript', 'html', 'typescript', 'css', 'tsx' },
      sync_install = false,
      auto_install = true,
      context_commentstring = {
        config = {
          javascript = {
            __default = '// %s',
            jsx_element = '{/* %s */}',
            jsx_fragment = '{/* %s */}',
            jsx_attribute = '// %s',
            comment = '// %s',
          }
        },
        typescript = { __default = '// %s', __multiline = '/* %s */' },
      },
      highlight = {
        enable = true,
        disable = { "lua" }
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true,
        filetypes = { 'html', 'javascript', 'typescriptreact', 'javascriptreact' }
      }
    })
  end
}
