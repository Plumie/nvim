return {
  'stevearc/overseer.nvim',
  opts = {
    templates = {},
    task_list = {
      default_detail = 3,
      min_height = 16
    }
  },
  keys = {
    {
      mode = 'n',
      '<leader>or',
      '<cmd>OverseerRun<CR>'
    }
  },
  config = function(_, opts)
    local overseer = require('overseer')
    overseer.setup(opts)
    overseer.register_template({
      name = "TypeScript: Compile with tsc",
      builder = function()
        return {
          cmd = "tsc",
          args = { "--noEmit" },
          components = {
            "default",
            {"on_output_parse", problem_matcher = "$tsc"},
            "on_result_diagnostics_quickfix"
          },
        }
      end,
      condition = {
        callback = function()
          return vim.fn.filereadable("tsconfig.json") == 1
        end,
      },
    })
    -- same thing for eslint
    overseer.register_template({
      name = "ESLint: Lint with eslint",
      builder = function()
        return {
          cmd = "eslint",
          args = { "--fix"},
          components = {
            "default",
            {"on_output_parse", problem_matcher = "$eslint-stylish"},
            "on_result_diagnostics_quickfix"
          },
        }
      end,
    })
  end
}
