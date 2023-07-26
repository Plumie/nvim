return {
  'folke/tokyonight.nvim',
  branch = 'main',
  config = function()
    require('tokyonight').setup({
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    })

    vim.cmd.colorscheme "tokyonight-storm"

    vim.cmd [[
			hi LineNr guibg=none guifg=#ffffff
			hi CursorLineNr guibg=none guifg=#ffffff
			hi Visual guifg=#000000 guibg=#CBC3E3 gui=none
			hi StatusLine guibg=NONE
			hi PounceMatch cterm=bold guifg=black guibg=white gui=bold
			hi PounceGap cterm=bold guifg=black guibg=#CBC3E3 gui=bold
			hi PounceAccept cterm=bold guifg=white guibg=#5f5faf gui=bold
			hi PounceAcceptBest cterm=bold guifg=black guibg=cyan gui=bold
			hi PounceCursor cterm = bold guifg=black guibg=#CBC3E3 gui=bold
			hi QuickScopePrimary cterm=bold guifg=white guibg=#5f5faf gui=bold
			hi QuickScopeSecondary cterm=bold guifg=black guibg=cyan gui=bold
		]]
  end
}
