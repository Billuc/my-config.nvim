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

