return {
  'nvim-treesitter/nvim-treesitter',
  ['do'] = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
    "nvim-treesitter/nvim-treesitter-textobjects",
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
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@call.outer",
          ["ic"] = "@call.inner",
          ["ai"] = "@conditional.outer",
          ["ii"] = "@conditional.inner",
          ["ia"] = "@parameter.inner",
          ["aa"] = "@parameter.outer",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
        },
      },
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
