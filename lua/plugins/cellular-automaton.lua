return {
  'eandrju/cellular-automaton.nvim',
  keys = { "<leader>jkl" },

  config = function()
    vim.keymap.set("n", "<leader>jkl", "<cmd>CellularAutomaton make_it_rain<CR>")
  end
}
