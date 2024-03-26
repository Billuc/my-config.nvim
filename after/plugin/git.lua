-- vim.keymap.set("n", "<leader>gg", ":Git<CR><C-w>J:10wincmd_<CR>");

-- Fugitive
vim.keymap.set("n", "<leader>gp", function() vim.cmd("Git push"); end);

vim.keymap.set("n", "<leader>ga", function()
    vim.cmd("Git add --all");
    print("Added all files. Ready to commit !");
end);

vim.keymap.set("n", "<leader>gc", function()
    local commitName = vim.fn.input("Commit name > ");

    if (commitName == "") then
        print("No commit name provided ! Aborting...");
        return;
    end

    vim.cmd(string.format('Git commit -m "%s"', commitName));
end);

-- Flog
-- vim.keymap.set("n", "<leader>gb", function()
--     local bufname = vim.fn.expand("%");

--     if (string.find(bufname, "flog")) then
--         vim.cmd("bd") -- Closes current buffer
--     else
--         vim.cmd("Flog");
--     end
-- end);

