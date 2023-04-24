local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>a', '<Cmd>lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<leader><leader>', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

map('n', '<a-h>', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<a-j>', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<a-k>', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<a-l>', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)
map('n', '<a-m>', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', opts)
