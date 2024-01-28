return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-d>",
        next = "<C-k>",
        prev = "<C-j>",
      }
    }
  }
}
