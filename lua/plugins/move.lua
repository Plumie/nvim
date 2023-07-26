return {
  'echasnovski/mini.move',
  lazy = true,
  event = 'BufReadCmd',

  init = function()
    require('mini.move').setup({
      options = {
        reindent_linewise = false,
      }
    })
  end,
}
