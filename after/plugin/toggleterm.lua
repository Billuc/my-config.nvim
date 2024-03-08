require("toggleterm").setup({ direction = 'tab' });

vim.keymap.set("t", "<C-t>", vim.cmd.ToggleTerm);
vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm);
vim.keymap.set("i", "<C-t>", vim.cmd.ToggleTerm);

