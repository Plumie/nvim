return {
  'hrsh7th/nvim-cmp',
  lazy = true,
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'onsails/lspkind.nvim'
  },
  config = function()
    local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local lspkind = require('lspkind')
    local ls = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()
    ls.filetype_extend('twig', { 'html' })

    cmp.setup({
      sources = {
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        {
          name = 'buffer',
          keyword_length = 2,
          max_item_count = 8,
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
      },
      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None"
        },
        documentation = cmp.config.window.bordered(),
      },
      snippet = {
        expand = function(args)
          if not ls then
            return
          end
          ls.lsp_expand(args.body)
        end,
      },
    })

    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end
}
