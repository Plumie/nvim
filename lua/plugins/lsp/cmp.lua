return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
    'onsails/lspkind.nvim',
    'hrsh7th/cmp-buffer',
    'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},

	config = function()
		local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local ls = require('luasnip');

    require('luasnip.loaders.from_vscode').lazy_load()

    ls.filetype_extend('twig', { 'html' })

    cmp.setup({
      sources = {
        {name = 'path'},
        {name = 'nvim_lsp'},
        {
          name = 'buffer',
          keyword_length = 2,
          max_item_count = 8,
        },
        {name = 'luasnip'},
      },
      formatting = {
        fields = {'abbr', 'kind', 'menu'},
        format = require('lspkind').cmp_format({
          mode = 'symbol',
          maxwidth = 50,
          ellipsis_char = '...',
        })
      },
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      },
      window = {
        completion = cmp.config.window.bordered(),
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
