return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local theme = require("lualine.themes.palenight")

    theme.normal.c.bg = nil
    theme.normal.b.bg = nil

    require('lualine').setup({
      options = {
        theme = theme,
        component_separators = { left = ' ', right = ' '},
        section_separators = { left = ' ', right = ' '},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {{'branch', 'diff', 'diagnostics'}},
        lualine_c = {
          {
            'filename',
            path = 1,
          }
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end
}
