return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        auto_install = true,
        highlight = { enable = true },
        incremental_selection = { enable = true },
        textobjects = { enable = true },
    }
}
