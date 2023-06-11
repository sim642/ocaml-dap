module Expect_test_config :
  Expect_test_config_types.S
    with module IO = Lwt = struct
  module IO = Lwt
  let run x = Lwt_main.run (x ())
  let sanitize x = x
  let upon_unreleasable_issue = `CR
end