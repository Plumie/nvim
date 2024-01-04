return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    defaults = {
      preview = {
        filesize_hook = function(filepath, bufnr, opts)
          local max_bytes = 10000
          local cmd = { "head", "-c", max_bytes, filepath }
          require('telescope.previewers.utils').job_maker(cmd, bufnr, opts)
        end
      }
    },
  },
  keys = {
    {
      '<leader>p',
      '<cmd>lua require("telescope.builtin").find_files()<cr>',
      desc = 'Find files'
    },
    {
      '<leader>f',
      '<cmd>lua require("telescope.builtin").live_grep()<cr>',
      desc = 'Find in files'
    },
    {
      '<leader>ed',
      '<cmd>lua require("telescope.builtin").diagnostics()<cr>',
      desc = 'Open diagnostics'
    }
  },
  config = true,
  init = function()
    vim.cmd [[
      hi TelescopeMatching guifg=#BA9CF3
      hi TelescopeBorder guifg=#BA9CF3
    ]]
  end
}
