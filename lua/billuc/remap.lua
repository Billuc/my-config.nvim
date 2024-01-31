
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ds", function() vim.cmd.Lex("%:p:h") end)
vim.keymap.set("n", "<leader>dd", function() vim.cmd.Lex() end)
