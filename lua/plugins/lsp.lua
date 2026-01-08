-- Language server configurations : https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    init = function()
        vim.lsp.enable({
            "lua_ls", -- Prerequisite : Install lua_ls (https://luals.github.io/#neovim-install)
            "rust_analyzer", -- Prerequisite : Install rust_analyzer (https://rust-analyzer.github.io/book/rust_analyzer_binary.html)
            "ts_ls", -- Prerequisite : Install typescript & typescript-language-server (npm install -g typescript typescript-language-server)
            "svelte", -- Prerequisite : Install svelte-language-server (npm install -g svelte-language-server)
        })
    end,
    keys = {
        { "<leader>ld", function() vim.diagnostic.open_float() end, desc = "Open diagnostic under cursor" },
        { "<leader>la", function() vim.lsp.buf.code_action() end, desc = "Open code actions" },
        { "<leader>lr", function() vim.lsp.buf.rename() end, desc = "Rename symbol" },
        { "]d", function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
        { "[d", function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" },
        { "<leader>k", function() vim.lsp.buf.hover() end, desc = "Hover definition" },
        { "gd", function() vim.lsp.buf.definition() end, desc = "Goto definition" },
        { "gr", function() vim.lsp.buf.references() end, desc = "Goto references" },
    },
}

-- W   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- W   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
--

