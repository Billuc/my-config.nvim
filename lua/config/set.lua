vim.opt.nu = true;
vim.opt.relativenumber = true;

-- Tabs
vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.expandtab = true;

-- Smart Indenting
vim.opt.smartindent = true;

-- Disable line wrap
vim.opt.wrap = false;

-- Incremental search (useful for regexes)
vim.opt.hlsearch = false;
vim.opt.incsearch = true;

-- Colors
vim.opt.termguicolors = true;

-- Scroll offset
vim.opt.scrolloff = 8;
vim.opt.signcolumn = "yes";
vim.opt.isfname:append("@-@");

-- Fast update time
vim.opt.updatetime = 50;

vim.opt.colorcolumn = "80";

-- Netrw Config

-- Ensure syncing
vim.g.netrw_keepdir = 0;
-- Netrw window takes 20% of buffer
vim.g.netrw_winsize = 15;
-- Recursive copy
vim.g.netrw_localcopydircmd = "cp -r";

-- Disable mouse
vim.opt.mouse = "";

-- WSL clipboard
if vim.fn.has('wsl') then
    vim.g.clipboard = {
        name = "WslClipboard",
        copy = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe",
        },
        paste = {
            ["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            ["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        },
        cache_enabled = 0,
    }
end
