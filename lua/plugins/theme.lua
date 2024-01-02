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
    -- Default
    vim.cmd [[
			hi LineNr guibg=none guifg=#E1E3E4
      hi cursorlinenr guibg=none guifg=#BA9CF3
      hi cursorline guibg=#31304D
      hi visual guifg=#000000 guibg=#E4E3E1 gui=none
      hi statusline guibg=none
      hi WinSeparator guifg=white
		]]
    -- Pounce
    vim.cmd [[
      hi pouncematch cterm=bold guifg=black guibg=#E1E3E4 gui=bold
      hi pouncegap cterm=bold guifg=black guibg=#cbc3e3 gui=bold
      hi pounceaccept cterm=bold guifg=black guibg=#85D3F2 gui=bold
      hi pounceacceptbest cterm=bold guifg=black guibg=#85D3F2 gui=bold
      hi pouncecursor cterm = bold guifg=black guibg=#cbc3e3 gui=bold
    ]]
    -- QuickScope
    vim.cmd [[
      hi QuickScopePrimary cterm=bold guifg=black guibg=#85D3F2 gui=bold
			hi QuickScopeSecondary cterm=bold guifg=black guibg=#A5E179 gui=bold
    ]]
    -- CMP
    vim.cmd [[
      hi PmenuSel guibg=#BA9CF3 guifg=#000000
      hi CmpItemAbbrMatch guifg=#BA9CF3
      hi CmpItemAbbrMatchFuzzy guifg=#BA9CF3
      hi CmpItemAbbrMatchFuzzyHighlight guifg=#BA9CF3
    ]]
    -- Telescope
    vim.cmd [[
      hi TelescopeMatching guifg=#BA9CF3
      hi TelescopeBorder guifg=#BA9CF3
    ]]
  end
}
