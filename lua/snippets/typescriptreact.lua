local _ = require('snippets/base')

_.ls.add_snippets('typescriptreact', {
  -- React Component
  _.s("FC", {
    _.t({"const "}), _.i(1), _.t({" = () => {"}),
    _.t({"", "  return ("}), _.i(0), _.t({")"}),
    _.t({"", "}"}),
    _.t({"", ""}),
    _.t({"", "export default "}), _.ri(1), _.t({";"}),
  }),
  -- Component Props
  _.s("Props", {
    _.t({"interface Props {"}),
    _.t({"", "  "}), _.i(0),
    _.t({"", "}"}),
  }),

  _.s("cn", {
    _.t({"className={'"}), _.i(1), _.t({"'}"}),
  }),
})
