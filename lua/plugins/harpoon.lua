return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        harpoon:extend({
            UI_CREATE = function(cx)
                vim.keymap.set("n", "<C-x>", function()
                      harpoon.ui:select_menu_item({ vsplit = true })
                  end, { buffer = cx.bufnr })

                vim.keymap.set("n", "<C-s>", function()
                      harpoon.ui:select_menu_item({ split = true })
                  end, { buffer = cx.bufnr })

                vim.keymap.set("n", "dd", function ()
                    local idx = vim.fn.line(".")
                      harpoon:list():remove_at(idx)
                      harpoon.ui:toggle_quick_menu(harpoon:list())
                      harpoon.ui:toggle_quick_menu(harpoon:list())
                end, { buffer = cx.bufnr })
            end
        })
    end,
    keys = {
        { "<leader>ha", function() require('harpoon'):list():add() end, desc = "Add harpoon" },
        { "<leader>hf", function()
                local harpoon = require('harpoon')
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end, desc = "Harpoon quick list" },
        { "<leader>hh", function() require('harpoon'):list():prev() end, desc = "Previous harpoon" },
        { "<leader>hl", function() require('harpoon'):list():next() end, desc = "Next harpoon" },
    },
};
