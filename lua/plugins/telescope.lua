return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Current file diagnostics" },
        { "<leader>fD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
        { "<leader>fk", "<cmd>Telescope keyamps<cr>", desc = "Keymaps" },
        { "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Quickfixes" },
        { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Search string under cursor" },

        -- Git related commands
	},
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["<C-h>"] = "which_key"
                }
            }
        }
    }
}

