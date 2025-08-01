return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "ruff_fix", "ruff_format" },
			javascript = { "biome", "prettierd", "prettier" },
			typescript = { "biome", "prettierd", "prettier" },
			javascriptreact = { "biome", "prettierd", "prettier" },
			typescriptreact = { "biome", "prettierd", "prettier" },
			json = { "biome", "prettierd", "prettier" },
			jsx = { "biome", "prettierd", "prettier" },
			tsx = { "biome", "prettierd", "prettier" },
			lua = { "stylua" },
		},
		default_format_opts = {
			lsp_format = "fallback",
			stop_after_first = true,
			format_on_save = true,
		},
		format_on_save = { timeout_ms = 500 },
	},
	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer/selection",
			mode = "",
		},
	},
}
