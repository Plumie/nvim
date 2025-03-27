return {
  "Exafunction/codeium.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  keys = {
    {
      "<C-c>",
      "<cmd>Codeium Chat<CR>",
      desc = "Codeium",
    }
  },
  config = function()
    require('codeium').setup({
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        key_bindings = {
          accept = "<C-d>",
          accept_word = false,
          accept_line = false,
          clear = false,
          next = "<M-]>",
          prev = "<M-[>",
        }
      }
    })
  end
}
