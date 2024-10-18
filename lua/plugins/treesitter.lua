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
    textsubjects = {
      enable = true,
      prev_selection = '<BS>',
      keymaps = {
        ['<CR>'] = 'textsubjects-smart',
        [';'] = 'textsubjects-container-outer',
        ['i;'] = 'textsubjects-container-inner',
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
          ["i="] = { query = "@assignment.rhs", desc = "Select inner part of an assignment" },
          ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },

          ["a:"] = { query = "@property.outer", desc = "Select outer part of an object property" },
          ["i:"] = { query = "@property.inner", desc = "Select inner part of an object property" },
          ["l:"] = { query = "@property.lhs", desc = "Select left part of an object property" },
          ["r:"] = { query = "@property.rhs", desc = "Select right part of an object property" },

          ["ar"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
          ["ir"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

          ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
          ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

          ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
          ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

          ["ac"] = { query = "@call.outer", desc = "Select outer part of a function call" },
          ["ic"] = { query = "@call.inner", desc = "Select inner part of a function call" },

          ["af"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
          ["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]c"] = { query = "@call.outer", desc = "Next function call start" },
          ["]f"] = { query = "@function.outer", desc = "Next method/function def start" },
          ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
          ["]l"] = { query = "@loop.outer", desc = "Next loop start" },
        },
        goto_next_end = {
          ["]C"] = { query = "@call.outer", desc = "Next function call end" },
          ["]F"] = { query = "@function.outer", desc = "Next method/function def end" },
          ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
          ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
        },
        goto_previous_start = {
          ["[c"] = { query = "@call.outer", desc = "Prev function call start" },
          ["[f"] = { query = "@function.outer", desc = "Prev method/function def start" },
          ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
          ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
        },
        goto_previous_end = {
          ["[C"] = { query = "@call.outer", desc = "Prev function call end" },
          ["[F"] = { query = "@function.outer", desc = "Prev method/function def end" },
          ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
          ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
        },
      },
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
    local ts_repeat = require("nvim-treesitter.textobjects.repeatable_move")
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat.repeat_last_move_opposite)
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat.builtin_f)
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat.builtin_F)
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat.builtin_t)
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat.builtin_T)
  end
}
