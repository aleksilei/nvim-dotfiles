require('telescope').setup()

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space>h', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>s', builtin.grep_string, {})
vim.keymap.set('n', '<Space>g', builtin.git_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.live_grep, {})
vim.keymap.set('n', '<Space>f', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<Space>F', builtin.lsp_dynamic_workspace_symbols, {})
