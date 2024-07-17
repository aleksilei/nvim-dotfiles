vim.cmd [[highlight IndentBlanklineChar guifg=#e0def4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#31748f gui=nocombine]]

require("ibl").setup()

--require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    --show_current_context = true,
    --show_current_context_start = false,
    --char_list = { '|', '¦', '┆', '┊' }
--}
