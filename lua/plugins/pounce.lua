return {
  'rlane/pounce.nvim',
  keys = {
    {
      's',
      function()
        require 'pounce'.pounce {}
      end,
      desc = 'Pounce to the match'
    }
  },

  init = function()
    vim.cmd [[
      hi pouncematch cterm=bold guifg=black guibg=#E1E3E4 gui=bold
      hi pouncegap cterm=bold guifg=black guibg=#cbc3e3 gui=bold
      hi pounceaccept cterm=bold guifg=black guibg=#85D3F2 gui=bold
      hi pounceacceptbest cterm=bold guifg=black guibg=#85D3F2 gui=bold
      hi pouncecursor cterm = bold guifg=black guibg=#cbc3e3 gui=bold
    ]]
  end
}
