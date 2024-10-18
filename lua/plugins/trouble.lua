return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>ed",
      "<cmd>Trouble diagnostics toggle<cr>",
    },
    {
      "<leader>eq",
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
