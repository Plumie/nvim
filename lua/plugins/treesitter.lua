return {
  'nvim-treesitter/nvim-treesitter',
  ['do'] = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
    "RRethy/nvim-treesitter-textsubjects",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ensure_installed = { 'javascript', 'html', 'typescript', 'css', 'tsx' },
    autotag = {
      enable = true,
      filetypes = { 'html', 'javascript', 'typescriptreact', 'javascriptreact' }
    },
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
    },
    indent = {
      enable = true
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
    require('nvim-treesitter-textsubjects').configure({
      prev_selection = '<BS>',
      keymaps = {
          ['<CR>'] = 'textsubjects-smart',
      },
    })
  end
}
