
require("billuc.remap")
require("billuc.lazy")
require("billuc.set")

require("lazy").setup({
        {
                'nvim-telescope/telescope.nvim', tag = '0.1.5',
                dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { "rose-pine/neovim", name = "rose-pine" },
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        {
                "theprimeagen/harpoon",
                branch = "harpoon2",
                dependencies = { "nvim-lua/plenary.nvim" }
        },
        { 'mbbill/undotree' },
        { 'tpope/vim-fugitive' },
        {
                'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
                dependencies = {
                        { 'neovim/nvim-lspconfig' },
                        {'hrsh7th/cmp-nvim-lsp'},
                        {'hrsh7th/nvim-cmp'},
                        {'L3MON4D3/LuaSnip'},
                        {'williamboman/mason.nvim'},
                        {'williamboman/mason-lspconfig.nvim'},
                }
        },
        {'akinsho/toggleterm.nvim', version = "*", config = true},
        {
                "rbong/vim-flog",
                lazy = true,
                cmd = { "Flog", "Flogsplit", "Floggit" },
        },
        { 'tpope/vim-commentary' },
})

