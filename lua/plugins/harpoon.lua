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
      '1',
      '<cmd>lua require("harpoon.ui").nav_file(1)<CR>',
      desc = 'Navigate to harpoon file 1'
    },
    {
      '2',
      '<cmd>lua require("harpoon.ui").nav_file(2)<CR>',
      desc = 'Navigate to harpoon file 2'
    },
    {
      '3',
      '<cmd>lua require("harpoon.ui").nav_file(3)<CR>',
      desc = 'Navigate to harpoon file 3'
    },
    {
      '4',
      '<cmd>lua require("harpoon.ui").nav_file(4)<CR>',
      desc = 'Navigate to harpoon file 4'
    },
    {
      '5',
      '<cmd>lua require("harpoon.ui").nav_file(5)<CR>',
      desc = 'Navigate to harpoon file 5'
    },
  }
}
