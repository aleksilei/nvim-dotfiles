local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'wbthomason/packer.nvim',
    'ellisonleao/gruvbox.nvim',
    'RRethy/base16-nvim',
    'rebelot/kanagawa.nvim',
    {
        'dracula/vim',
        lazy = false,
    },
    'nvim-tree/nvim-tree.lua',
    'mbbill/undotree',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    'bluz71/vim-nightfly-colors',
    'vim-test/vim-test',
    'lewis6991/gitsigns.nvim',
    'preservim/vimux',
    'christoomey/vim-tmux-navigator',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'Mofiqul/vscode.nvim',
    'rose-pine/neovim',
    {
        'mcchrish/zenbones.nvim',
        dependencies = { {'rktjmp/lush.nvim'} }
    },
    'windwp/nvim-autopairs',
    'lukas-reineke/indent-blankline.nvim',
    'norcalli/nvim-colorizer.lua',
    'LuaLS/lua-language-server',
    'mfussenegger/nvim-dap',
    "andrewferrier/wrapping.nvim",
    "simrat39/rust-tools.nvim",
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-live-grep-args.nvim'} }
    },
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
    {'BurntSushi/ripgrep'},
    {'David-Kunz/gen.nvim'},
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenarynvim" }
    },

    --{'neovim/nvim-lspconfig'},
    --{'williamboman/mason.nvim'},
    --{'williamboman/mason-lspconfig.nvim'},
    -- Zero LSP 
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },

    --tmux code compiler
    { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
},

{ -- The task runner we use
"stevearc/overseer.nvim",
commit = "3047ede61cc1308069ad1184c0d447ebee92d749",
cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
opts = {
            task_list = {
                direction = "bottom",
                min_height = 25,
                max_height = 25,
                default_detail = 1,
                bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
            },
        },
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
