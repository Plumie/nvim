return {
  'kylechui/nvim-surround',
  lazy = true,
  event = "BufReadCmd",

  config = function()
    require("nvim-surround").setup()
  end
}
