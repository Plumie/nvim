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
    -- Register a template for eslint
    overseer.register_template({
      name = 'eslint',
      builder = function()
        return {
          cmd = 'npm run lint',
          name = 'eslint',
          cwd = vim.fn.getcwd(),
          components = {
            "display_duration",
            "on_output_summarize",
            "on_complete_notify",
            {"on_output_parse", problem_matcher = "$eslint-stylish"},
            "on_result_diagnostics_quickfix"
          }
        }
      end,
    })
    -- Register a tempalte for tsc
    overseer.register_template({
      name = 'tsc',
      builder = function()
        return {
          cmd = 'npm run tsc',
          name = 'tsc',
          cwd = vim.fn.getcwd(),
          components = {
            "display_duration",
            "on_output_summarize",
            "on_complete_notify",
            {"on_output_parse", problem_matcher = "$tsc"},
            "on_result_diagnostics_quickfix",
          }
        }
      end,
    })
  end
}
