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
    'ellisonleao/gruvbox.nvim',
    'RRethy/base16-nvim',
    'nvim-tree/nvim-tree.lua',
    'mbbill/undotree',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    'lewis6991/gitsigns.nvim',
    'preservim/vimux',
    'christoomey/vim-tmux-navigator',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'rose-pine/neovim',
    'windwp/nvim-autopairs',
    'lukas-reineke/indent-blankline.nvim',
    'norcalli/nvim-colorizer.lua',
    'LuaLS/lua-language-server',
    'mfussenegger/nvim-dap',
    "andrewferrier/wrapping.nvim",
    'L3MON4D3/LuaSnip',
    'BurntSushi/ripgrep',
    'David-Kunz/gen.nvim',

    -- LSP
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',

    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    {
        'mcchrish/zenbones.nvim',
        dependencies = { {'rktjmp/lush.nvim'} }
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-live-grep-args.nvim'} }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenarynvim" }
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
