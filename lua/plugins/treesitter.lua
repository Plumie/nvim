return {
  'nvim-treesitter/nvim-treesitter',
  ['do'] = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
    "RRethy/nvim-treesitter-textsubjects"
  },
  event = { "BufReadPre", "BufNewFile" },
  main = 'nvim-treesitter.configs',
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
    textsubjects = {
      enable = true,
      prev_selection = '<BS>',
      keymaps = {
        ['<CR>'] = 'textsubjects-smart',
        [';'] = 'textsubjects-container-outer',
        ['i;'] = 'textsubjects-container-inner',
      },
    },
  },
}
