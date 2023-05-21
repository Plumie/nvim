return {
	'hrsh7th/nvim-cmp',
	lazy = true,
	event = 'InsertEnter *',
	dependencies = {
		'onsails/lspkind.nvim',
		'hrsh7th/cmp-nvim-lsp',
	},

	config = function()
		local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )

		local lspkind = require('lspkind')

		cmp.setup {
			formatting = {
				format = function(entry, vim_item)
					vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
					return vim_item
				end,
			},
		}
	end
}
