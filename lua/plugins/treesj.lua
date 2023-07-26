return {
  'Wansmer/treesj',
  lazy = true,
  event = "BufReadCmd",

  config = function()
    require('treesj').setup({
      use_default_keymaps = false,
    })

    vim.keymap.set("n", "<leader>jj", ":TSJToggle<CR>", { silent = true, remap = true })
  end
}
