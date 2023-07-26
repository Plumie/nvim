return {
  'numToStr/Comment.nvim',
  lazy = true,
  keys = { "gc" },

  config = function()
    require('Comment').setup()
  end
}
