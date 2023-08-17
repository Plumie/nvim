return {
  'echasnovski/mini.splitjoin',
  init = function()
    require('mini.splitjoin').setup({
      mappings = {
        toggle = '<leader>j',
      },
    })
  end,
}
