
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
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            position = "right",
            width = 50,
        }
    },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    {
        'linux-cultist/venv-selector.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'nvim-telescope/telescope.nvim',
            'mfussenegger/nvim-dap-python'
        },
        opts = {},
        event = "VeryLazy",
        keys = {
            { '<leader>vs', '<cmd>VenvSelect<CR>' },
            { '<leader>vc', '<cmd>VenvSelectCached<CR>' },
        },
    },
    { 'stevearc/conform.nvim', opts = {}, },
    { 'nvim-tree/nvim-tree.lua', 
        version = "*",
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
})

