local tree = require("nvim-tree")
local api = require("nvim-tree.api")
local webIcons = require("nvim-web-devicons")

local function my_on_attach(bufnr)
    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr);
    
    vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm, opts('Open terminal'));
    vim.keymap.set("n", "<C-y>", api.node.open.tab, opts('Open: New Tab'));
    vim.keymap.set("n", "?", api.tree.toggle_help, opts('Help'));
end

tree.setup({
    view = {
        width = 40
    },
    on_attach = my_on_attach
})
webIcons.setup()

vim.keymap.set("n", "<leader>df", api.tree.toggle)
vim.keymap.set("n", "<leader>ds", function()
    api.tree.find_file({ open = true , focus = true })
end)

