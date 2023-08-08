require'nvim-treesitter.configs'.setup {
  auto_install = false,
  ignore_install = {},
  ensure_installed = { "c", "lua", "zig", "typescript" },
  indent = {
    enable = true
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

