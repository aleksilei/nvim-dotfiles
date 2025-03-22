-- Colorschemes
require("core.plugin_config.base16")

-- Harpoon is harpoon
require("core.plugin_config.harpoon")

-- Statusline plugin
require("core.plugin_config.lualine")

-- File utils
require("core.plugin_config.nvim-tree")
require("core.plugin_config.treesitter")
require("core.plugin_config.telescope")

-- Editing utils
require("core.plugin_config.autopairs")
require("core.plugin_config.indent-blankline")
require("core.plugin_config.wrapping")
require("core.plugin_config.gitsigns")
require("core.plugin_config.colorizer")

-- LSP
require("core.plugin_config.lsp")
require("core.plugin_config.mason")

-- Debugger (Currently not in use. We test in prod)
--require("core.plugin_config.dap")
