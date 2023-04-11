require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" },
})

vim.cmd([[
  let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.twig'
  let g:closetag_regions =  {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
]])

require('nvim-ts-autotag').setup({
  filetypes = { "html" , "twig", "javascriptreact", "typescriptreact" },
  
})
