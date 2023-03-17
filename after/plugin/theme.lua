require('onedark').setup {
  style = "warm",
  transparent = true,
  lualine = {
    transparent = true
  },
  barbar = {
    transparent = true
  }
}
vim.cmd.colorscheme "onedark"

vim.cmd [[
    hi LineNr guibg=none guifg=#ffffff
    hi CursorLineNr guibg=none guifg=#ffffff
    hi Visual guifg=#000000 guibg=#CBC3E3 gui=none
]]

