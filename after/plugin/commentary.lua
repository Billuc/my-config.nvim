vim.keymap.set("n", "<leader>:", vim.cmd.Commentary);
vim.keymap.set("v", "<leader>:", function() vim.cmd("'<,'>Commentary"); end);
