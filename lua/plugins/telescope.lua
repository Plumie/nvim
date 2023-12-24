return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = {
    'nvim-telescope/telescope-project.nvim',
    'nvim-lua/plenary.nvim',
    "debugloop/telescope-undo.nvim",
  },
  lazy = true,
  keys = {
    '<leader>p',
    '<leader>f',
    '<leader>ed',
    '<leader>es',
    '<leader>eu',
    '<leader>ep',
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({
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
        project = {
          sync_with_nvim_tree = true,
        },
        undo = {
          mappings = {
            i = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
            n = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
          }
        },
      }
    })

    local builtin = require('telescope.builtin')

    -- Find files
    vim.keymap.set('n', '<leader>p', builtin.find_files, {})

    -- Find in files
    vim.keymap.set('n', '<leader>f', builtin.live_grep, {})

    -- Open diagnostics
    vim.keymap.set('n', '<leader>ed', builtin.diagnostics, {})

    -- Project navigation
    vim.api.nvim_set_keymap(
      'n',
      '<leader>ep',
      ":lua require'telescope'.extensions.project.project{}<CR>",
      { noremap = true, silent = true }
    )

    vim.api.nvim_set_keymap(
      'n',
      '<leader>eu',
      ":lua require'telescope'.extensions.undo.undo{}<CR>",
      { noremap = true, silent = true }
    )
  end
}
