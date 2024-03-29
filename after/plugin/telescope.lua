local builtin = require('telescope.builtin');

vim.keymap.set('n', '<leader>ff', builtin.find_files, {});
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});
vim.keymap.set('n', '<leader>fb', builtin.buffers, {});
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {});
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {});
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Git-related commands
vim.keymap.set('n', '<leader>gj', builtin.git_status, {});
vim.keymap.set('n', '<leader>gh', builtin.git_bcommits, {});
-- vim.keymap.set('n', '<leader>gb', builtin.git_branches, {});
vim.keymap.set('n', '<leader>gn', builtin.git_commits, {});

-- Treesitter
-- vim.keymap.set('n', '<leader>ts', builtin.treesitter, {});

