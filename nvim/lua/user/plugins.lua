require("lazy").setup({
    "EdenEast/nightfox.nvim",
    "feline-nvim/feline.nvim",
    "folke/neodev.nvim",
    "tpope/vim-commentary",
    "tpope/vim-surround",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    },
    "windwp/nvim-autopairs",
    "RRethy/vim-illuminate",
    "lukas-reineke/lsp-format.nvim",
    { 'nvim-telescope/telescope.nvim', branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    'gbrlsnchs/telescope-lsp-handlers.nvim',
    'lewis6991/gitsigns.nvim',
    'folke/trouble.nvim'
}, {}
)
