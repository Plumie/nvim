local s = require('snippets/snip')

s.ls.add_snippets('typescriptreact', {
  -- React Component
  s.s("FC", {
    s.t({"const "}), s.i(1), s.t({" = () => {"}),
    s.t({"", "  return ("}), s.i(0), s.t({")"}),
    s.t({"", "}"}),
    s.t({"", ""}),
    s.t({"", "export default "}), s.ri(1), s.t({";"}),
  }),
  -- Component Props
  s.s("Props", {
    s.t({"interface Props {"}),
    s.t({"", "  "}), s.i(0),
    s.t({"", "}"}),
  })
})
