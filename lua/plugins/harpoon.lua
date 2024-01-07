return {
  'ThePrimeagen/harpoon',
  keys = {
    {
      '<leader>m',
      '<cmd>lua require("harpoon.mark").add_file()<CR>',
      desc = 'Add file to harpoon'
    },
    {
      '<leader><Tab>',
      '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
      desc = 'Toggle harpoon menu'
    },
    {
      '<C-h>',
      '<cmd>lua require("harpoon.ui").nav_file(1)<CR>',
    },
    {
      '<C-j>',
      '<cmd>lua require("harpoon.ui").nav_file(2)<CR>',
    },
    {
      '<C-k>',
      '<cmd>lua require("harpoon.ui").nav_file(3)<CR>',
    },
    {
      '<C-l>',
      '<cmd>lua require("harpoon.ui").nav_file(4)<CR>',
    },
  }
}
