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

---- Netrw window takes 20% of buffer
vim.g.netrw_winsize = 20;
---- Recursive copy
vim.g.netrw_localcopydircmd = "cp -r";
---- Highlight marked files
vim.api.nvim_set_hl(0, "netrwMarkFile", { link = "Search" });
---- Show netrw path
vim.opt.hidden = false;
---- Ensure syncing of current directory between netrw and vim
-- vim.g.netrw_keepdir = 0;
---- Disable autochdir to avoid changing directory automatically
vim.opt.autochdir = false;
---- Autocmd to sync current directory when opening nvim
vim.api.nvim_create_autocmd('VimEnter', {
    desc = 'cd to directory passed as argument when vim starts',
    group = vim.api.nvim_create_augroup('cd-to-pwd', { clear = true }),
    callback = function ()
        local bufname = vim.api.nvim_buf_get_name(0);
        local last_slash = string.match(bufname, ".*[\\|/]()") - 1;
        local cwd = string.sub(bufname, 1, last_slash);
        vim.api.nvim_set_current_dir(cwd)
    end,
});

--

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
