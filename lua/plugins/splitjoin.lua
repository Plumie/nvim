return {
  'Wansmer/treesj',
  keys = {
    {
      '<leader>j',
      '<cmd>lua require("treesj").toggle()<CR>',
      desc = 'Toggle treesitter join/split',
    },
  },
  opts = {
    use_default_keymaps = false,
  },
}
