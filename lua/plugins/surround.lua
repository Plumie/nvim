return {
  'kylechui/nvim-surround',
  opts = {
    surrounds = {
      ["("] = {
        add = function() return { { "(" }, { ")" } } end,
      },
      ["{"] = {
        add = function() return { { "{" }, { "}" } } end,
      },
      ["["] = {
        add = function() return { { "[" }, { "]" } } end,
      },
      ["<"] = {
        add = function() return { { "<" }, { ">" } } end,
      },
    },
  }
}
