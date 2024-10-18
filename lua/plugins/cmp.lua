  return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'onsails/lspkind-nvim',
  },
  opts = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    return {
      sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', max_item_count = 2 },
      },
      formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = lspkind.cmp_format({
          mode = 'symbol_text',
          maxwidth = 50,
        })
      },
      completion = {
        keyword_length = 1,
      },
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
          select = false,
        }),
      },
    }
  end,
}
