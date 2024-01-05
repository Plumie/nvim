return {
  "pmizio/typescript-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",
    {
      'dmmulroy/tsc.nvim',
      keys = {
        {
          '<leader>lt',
          '<cmd>TSC<CR>',
          desc = 'Type check'
        }
      },
      opts = {
        auto_open_qflist = false,
        auto_start_watch_mode = true,
        enable_progress_notifications = false,
        flags = {
          watch = true
        }
      },
      config = true,
    }
  },
  config = true,
}
