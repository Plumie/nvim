return {
  'dmmulroy/tsc.nvim',
  config = function()
    require('tsc').setup({
      auto_open_qflist = false,
      flags = {
        noEmit = true,
        watch = true,
      }
    })
  end
}
