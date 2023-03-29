local theme = require("lualine.themes.tokyonight")
theme.normal.c.bg = nil

require('lualine').setup({
  options = {
    theme = theme 
  }
})
