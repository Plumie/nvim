return {
  'nvim-treesitter/nvim-treesitter',
  ['do'] = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
    "nvim-treesitter/nvim-treesitter-textobjects"
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'javascript', 'html', 'typescript', 'css', 'tsx' },
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
      autotag = {
        enable = true,
        filetypes = { 'html', 'javascript', 'typescriptreact', 'javascriptreact' }
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@conditional.outer",
            ["ic"] = "@conditional.inner",
            ["ia"] = "@parameter.inner",
            ["aa"] = "@parameter.outer",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
            ["iv"] = "@variable",
            ["av"] = "@variable",
          }
        },
      },
    })
  end
}
