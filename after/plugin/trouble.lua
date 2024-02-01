local trouble = require("trouble")

vim.keymap.set("n", "<leader>tb", function() trouble.toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>tq", function() trouble.toggle("quickfix") end)
