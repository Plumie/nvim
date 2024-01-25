local luasnip = require('luasnip')
local _ = {
  ls = luasnip,
  s = luasnip.snippet,
  t = luasnip.text_node,
  i = luasnip.insert_node,
  f = luasnip.function_node,
  ri = function (insert_node_id)
    return luasnip.function_node(function (args) return args[1][1] end, insert_node_id)
  end
}

return _;
