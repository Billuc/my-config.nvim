return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
	},
	opts = function()
		local cmp = require("cmp")

		return {
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "buffer", keyword_length = 3 },
			},
			mapping = cmp.mapping.preset.insert({
				["<C-q>"] = cmp.mapping.complete(),
				["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-e>"] = cmp.mapping.abort(),
			}),
		}
	end,
}
