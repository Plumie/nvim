return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        {
          section = "keys",
          gap = 1,
          padding = 2,
        },
        {
          section = "startup",
        },
      },
      preset = {
        keys = {
          { icon = " ", key = "s", desc = "Config", action = ":e $MYVIMRC | :cd %:p:h" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      }
    },
    indent = {
      enabled = true,
      animate = {
        enabled = false
      },
    },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
  },
  keys = {
    { "<leader>p", function() Snacks.picker.smart() end, desc = "Smart search" },
    { "<leader>f", function() Snacks.picker.grep() end, desc = "Grep"},
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },

  }
}
