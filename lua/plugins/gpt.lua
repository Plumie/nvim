return {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  keys = {
    {
      '<leader>cx',
      '<cmd>ChatGPTRun explain_code<CR>',
      mode = {'n', 'v'},
      desc = 'Explain current selection'
    },
    {
      '<leader>co',
      '<cmd>ChatGPTRun optimize_code<CR>',
      mode = {'n', 'v'},
      desc = 'Optimize current selection'
    },
    {
      '<leader>ca',
      '<cmd>ChatGPTRun complete_code<CR>',
      mode = {'n', 'v'},
      desc = 'Complete current selection'
    },
    {
      '<leader>ci',
      '<cmd>ChatGPTEditWithInstructions<CR>',
      mode = {'n', 'v'},
      desc = 'Edit current selection with instructions'
    },
  },
  config = true
}



