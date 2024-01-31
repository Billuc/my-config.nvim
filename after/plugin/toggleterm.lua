require("toggleterm").setup({ direction = 'float' });

vim.keymap.set("t", "<C-t>", vim.cmd.ToggleTerm);
vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm);
vim.keymap.set("i", "<C-t>", vim.cmd.ToggleTerm);

