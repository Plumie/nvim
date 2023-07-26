return {
  'eandrju/cellular-automaton.nvim',
  lazy = true,
  keys = { "<leader>lkj" },
  config = function()
    vim.keymap.set("n", "<leader>lkj", "<cmd>CellularAutomaton make_it_rain<CR>")
  end
}
