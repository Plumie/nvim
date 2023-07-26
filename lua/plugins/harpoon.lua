return {
  'ThePrimeagen/harpoon',
  lazy = true,
  keys = {
    '<leader>a',
    '<leader><Tab>',
  },

  config = function()
    local default = { noremap = true, silent = true }

    -- Main
    vim.keymap.set('n', '<leader>a', '<Cmd>lua require("harpoon.mark").add_file()<CR>', default)
    vim.keymap.set('n', '<leader><Tab>', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', default)

    -- Navigation
    vim.keymap.set('n', '<a-h>', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', default)
    vim.keymap.set('n', '<a-j>', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', default)
    vim.keymap.set('n', '<a-k>', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', default)
    vim.keymap.set('n', '<a-l>', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', default)
    vim.keymap.set('n', '<a-m>', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', default)
  end
}
