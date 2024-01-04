  return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'onsails/lspkind.nvim',
  },
  opts = function()
    local lspkind = require('lspkind')
    local cmp = require('cmp')
    return {
      sources = {
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        {
          name = 'buffer',
          max_item_count = 2,
        },
      },
      formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = lspkind.cmp_format({
          mode = 'symbol',
          maxwidth = 50,
          symbol_map = {
            Copilot = "",
          }
        })
      },
      window = {
        documentation = cmp.config.window.bordered()
      },
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        }),
      }
    }
  end,
  init = function()
    local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end
}
