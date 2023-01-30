require("lazy").setup({
    "folke/neodev.nvim",
    "tpope/vim-commentary",
    "tpope/vim-surround",
    "tpope/vim-fugitive",
    "tpope/vim-unimpaired",
    "navarasu/onedark.nvim",
    "shaunsingh/nord.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    "nvim-tree/nvim-web-devicons",
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "mbbill/undotree",
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
    "nvim-tree/nvim-tree.lua",
    "ellisonleao/glow.nvim",
    "RRethy/vim-illuminate",
    "lukas-reineke/lsp-format.nvim",
    { "renerocksai/telekasten.nvim", dependencies = { "renerocksai/calendar-vim" } },
    { "ldelossa/gh.nvim", dependencies = { "ldelossa/litee.nvim" } },
    { "folke/which-key.nvim", config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end
    },
    { 'nvim-telescope/telescope.nvim', branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
},
    {}
)
