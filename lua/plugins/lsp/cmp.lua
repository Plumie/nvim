return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
	},

	config = function()
		local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    local ls = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()
    ls.filetype_extend('twig', { 'html' })

    cmp.setup({
      sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'luasnip'},
      },
      formatting = {
        fields = {'abbr', 'kind', 'menu'},
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
          require('luasnip').lsp_expand(args.body)
        end,
      },
    })

    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
	end
}
