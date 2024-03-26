vim.keymap.set("n", "<leader>:", vim.cmd.Commentary);
vim.keymap.set("v", "<leader>:", function() vim.cmd("'<,'>Comment"); end); -- Commentary does not work (idk why, must have messed up) :/
