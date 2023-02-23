require('catppuccin').setup {
    transparent_background = true,
    show_end_of_buffer = false
}

vim.cmd.colorscheme "catppuccin"
vim.wo.fillchars='eob: '
vim.cmd [[
    hi LineNr guibg=none guifg=#ffffff
    hi CursorLineNr guibg=none guifg=#ffffff
]]

require("startup").setup({
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Something",
        margin = 1,
        content = {
        "",
        ""
        },
        highlight = "Normal",
        default_color = "",
        oldfiles_amount = 0,
    },
    parts = {"header"},
})