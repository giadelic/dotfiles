require("giadelic.base")
require("giadelic.maps")
require("giadelic.plugins")

vim.g.coq_settings = {
  auto_start = true,
  xdg = true,
  clients = {
    lsp = {
      resolve_timeout = 0.02,
    },
    tree_sitter = {
      slow_threshold = 0.025,
    },
    buffers = {
      match_syms = true,
      same_filetype = true,
    },
  },
  limits = {
    completion_auto_timeout = 0.05,
  },
}
