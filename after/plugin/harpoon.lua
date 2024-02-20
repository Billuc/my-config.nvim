local harpoon = require('harpoon')

-- REQUIRED --
harpoon:setup()
-- REQUIRED --

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-d>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-m>", function() harpoon:list():select(4) end)

harpoon:extend({
    UI_CREATE = function(cx)
        vim.keymap.set("n", "<C-v>", function()
            harpoon.ui:select_menu_item({ vsplit = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-s>", function()
            harpoon.ui:select_menu_item({ split = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-t>", function()
            harpoon.ui:select_menu_item({ tabedit = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-c>", function ()
            harpoon.ui:close_menu()
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "dd", function ()
            local idx = vim.fn.line(".")
            harpoon:list():removeAt(idx)
            harpoon.ui:toggle_quick_menu(harpoon:list())
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { buffer = cx.bufnr })
    end
})
