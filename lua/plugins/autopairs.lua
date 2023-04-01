require'nvim-autopairs'.setup()

vim.cmd([[
  let g:closetag_filenames = '*.html,*.jsx,*.tsx'
  let g:closetag_regions =  {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
]])
