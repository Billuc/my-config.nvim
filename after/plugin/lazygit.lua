local Terminal = require("toggleterm.terminal").Terminal

local lazygitTerm = Terminal:new({
    cmd = "lazygit",
    hidden = true
});

function lazygit_toggle()
    lazygitTerm:toggle()
end

vim.keymap.set("n", "<c-g>", lazygit_toggle, { noremap = true, silent = true })
vim.keymap.set("t", "<c-g>", lazygit_toggle, { noremap = true, silent = true })
