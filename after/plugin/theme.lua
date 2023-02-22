require("catppuccin").setup({
    transparent_background = true
})

vim.cmd.colorscheme "catppuccin"

vim.cmd [[
    hi LineNr guibg=none guifg=#ffffff
    hi CursorLineNr guibg=none guifg=#ffffff
]]