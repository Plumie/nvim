  return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    {
      'L3MON4D3/LuaSnip',
      keys = {
        {
          mode = 'i',
          '<C-d>',
          '<cmd>lua require("luasnip").jump(1)<CR>',
        },
        {
          mode = 'i',
          '<C-u>',
          '<cmd>lua require("luasnip").jump(-1)<CR>',
        },
      }
    },
    'onsails/lspkind.nvim',
    'hrsh7th/cmp-emoji',
    'saadparwaiz1/cmp_luasnip'
  },
  opts = function()
    local lspkind = require('lspkind')
    local cmp = require('cmp')
    return {
      sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        {
          name = 'buffer',
          max_item_count = 2,
        },
        {
          name = 'emoji'
        }
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
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        }),
      },
      snippet = {
        expand = function(args)
          require'luasnip'.lsp_expand(args.body)
        end
      },
    }
  end,
}
