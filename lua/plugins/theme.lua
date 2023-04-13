-- require('onedark').setup {
--   style = "warm",
--   transparent = true,
--   lualine = {
--     transparent = true
--   },
--   barbar = {
--     transparent = true
--   }
-- }
--
require('tokyonight').setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})

vim.cmd.colorscheme "tokyonight-storm"

vim.cmd [[
  hi LineNr guibg=none guifg=#ffffff
  hi CursorLineNr guibg=none guifg=#ffffff
  hi Visual guifg=#000000 guibg=#CBC3E3 gui=none
  hi StatusLine guibg=NONE
]]


require('neoscroll').setup()
