require("lazy").setup({

  -- Appearance
  require('plugins/theme'),
  require('plugins/lualine'),
  require('plugins/alpha'),
  require('plugins/nvim-web-devicons'),
  require('plugins/blankline'),
  require('plugins/colorizer'),
  
  -- LSP / Autocomplete
  require('plugins/lsp'),
  require('plugins/cmp'),
  require('plugins/mason'),
  require('plugins/copilot'),

  -- Terminal
  require('plugins/tmux'),

  -- File Management / Navigation
  require('plugins/oil'),
  require('plugins/telescope'),
  require('plugins/harpoon'),

  -- Editing
  require('plugins/treesitter'),
  require('plugins/surround'),
  require('plugins/comment'),
  require('plugins/pounce'),
  require('plugins/autopairs'),
  require('plugins/quickscope'),
  require('plugins/splitjoin'),

  -- Git
  require('plugins/fugitive'),
  require('plugins/gitsigns'),

  -- Misc
  require('plugins/early-retirement'),
  require('plugins/cellular-automaton'),
})
