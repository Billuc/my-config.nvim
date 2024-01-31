vim.opt.nu = true;
vim.opt.relativenumber = true;

-- Tabs
vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.shiftwidth = 4;
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
vim.g.netrw_winsize = 20;
-- Recursive copy
vim.g.netrw_localcopydircmd = "cp -r";
