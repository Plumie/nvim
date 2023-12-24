    return {
      'zbirenbaum/copilot.lua',
      dependencies = {
        'zbirenbaum/copilot-cmp',
      },
      config = function()
        require('copilot').setup({
          suggestion = {enabled = false},
          panel = {enabled = false}
          -- suggestion = {
          --   auto_trigger = true,
          --   keymap = {
          --     accept = '<leader><Tab>',
          --   },
          -- },
        })
        require('copilot_cmp').setup()
      end
    }
