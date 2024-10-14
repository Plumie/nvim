return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
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
