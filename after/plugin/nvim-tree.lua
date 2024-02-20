local tree = require("nvim-tree")
local api = require("nvim-tree.api")

tree.setup({
    view = {
        width = 50
    },
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        api.config.mappings.default_on_attach(bufnr)
    end,
})

vim.keymap.set("n", "<leader>df", api.tree.toggle)
vim.keymap.set("n", "<leader>ds", function() 
    api.tree.find_file({ open = true , focus = true })
end)
