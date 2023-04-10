local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>a', '<Cmd>lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<leader><leader>', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

map('n', '<a-1>', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<a-2>', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<a-3>', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<a-4>', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)
map('n', '<a-5>', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', opts)
