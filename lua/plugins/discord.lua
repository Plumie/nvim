return {
  'andweeb/presence.nvim',
  config = function()
    require('presence').setup()
    vim.cmd [[
      let g:presence_editing_text        = "Editing stuff"
    ]]
  end
}
