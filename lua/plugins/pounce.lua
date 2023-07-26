return {
  'rlane/pounce.nvim',
  lazy = true,
  keys = {
    's',
  },
  config = function()
    vim.keymap.set("n", "s", function() require 'pounce'.pounce {} end)
    vim.keymap.set("x", "s", function() require 'pounce'.pounce {} end)
  end
}
