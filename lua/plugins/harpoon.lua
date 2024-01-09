return {
  'ThePrimeagen/harpoon',
  keys = {
    {
      '<leader>a',
      '<cmd>lua require("harpoon.mark").add_file()<CR>',
      desc = 'Add file to harpoon'
    },
    {
      '<leader><Tab>',
      '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
      desc = 'Toggle harpoon menu'
    },
    {
      '<leader>1',
      '<cmd>lua require("harpoon.ui").nav_file(1)<CR>',
    },
    {
      '<leader>2',
      '<cmd>lua require("harpoon.ui").nav_file(2)<CR>',
    },
    {
      '<leader>3',
      '<cmd>lua require("harpoon.ui").nav_file(3)<CR>',
    },
    {
      '<leader>4',
      '<cmd>lua require("harpoon.ui").nav_file(4)<CR>',
    },
    {
      '<leader>5',
      '<cmd>lua require("harpoon.ui").nav_file(5)<CR>',
    },
  }
}
