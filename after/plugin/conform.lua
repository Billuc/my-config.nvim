local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        python = { { "ruff" } },
        javascript = { { "biome", "prettierd", "prettier" } },
        typescript = { { "biome", "prettierd", "prettier" } },
        javascriptreact = { { "biome", "prettierd", "prettier" } },
        typescriptreact = { { "biome", "prettierd", "prettier" } },
        json = { { "biome", "prettierd", "prettier" } },
        jsx = { { "biome", "prettierd", "prettier" } },
        tsx = { { "biome", "prettierd", "prettier" } },
        lua = { { "stylua" } },
    }
});

vim.keymap.set("n", "<leader>=", function() conform.format() end);
vim.keymap.set("v", "<leader>=", function() conform.format() end);
