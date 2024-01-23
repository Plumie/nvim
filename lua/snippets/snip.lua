local snip = {
  ls = require('luasnip'),
  s = require('luasnip').snippet,
  t = require('luasnip').text_node,
  i = require('luasnip').insert_node,
  f = require('luasnip').function_node,
  ri = function (insert_node_id)
    return require('luasnip').function_node(function (args) return args[1][1] end, insert_node_id)
  end
}

return snip;
