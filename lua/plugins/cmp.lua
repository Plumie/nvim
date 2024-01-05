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
          mode = 'symbol_text',
          maxwidth = 50,
          symbol_map = {
            Copilot = "",
          }
        })
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
}
