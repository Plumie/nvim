return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
    { 'nvim-telescope/telescope-ui-select.nvim' },
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
    extensions = {
      ['ui-select'] = {
        require('telescope.themes').get_dropdown(),
      },
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
      '<leader>eq',
      '<cmd>lua require("telescope.builtin").quickfix()<cr>',
      desc = 'Find in files'
    },
    {
      '<leader>el',
      '<cmd>lua require("telescope.builtin").oldfiles()<cr>',
      desc = 'Find in files'
    },
    {
      '<leader>en',
      function ()
        require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = 'Find in files'
    },
  },
  config = function()
    require('telescope').load_extension 'fzf'
    require('telescope').load_extension 'ui-select'
  end,
}
