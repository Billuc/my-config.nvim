local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
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

vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  conform.format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
