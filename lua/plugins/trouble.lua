return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>od",
      "<cmd>Trouble diagnostics toggle<cr>",
    },
    {
      "<leader>oq",
      "<cmd>Trouble quickfix toggle<cr>",
    }
  },
  opts = {
    focus = true,
    win = {
      relative = "editor",
      size = {height = 0.4}
    }
  },
}
