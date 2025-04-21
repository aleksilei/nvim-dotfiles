require'nvim-treesitter.configs'.setup {
  -- Install parsers synchronously (only applied to `ensure_installed`)
  ensure_installed = {"go"},
  sync_install = true,
  auto_install = true,
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
}
