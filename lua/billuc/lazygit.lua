local lazygitpath = vim.fn.stdpath("data") .. "/lazygit/lazygit"

if not vim.loop.fs_stat(lazygitpath) then
	print("Installing lazygit ! Go is required !")

	vim.fn.system({
		"git",
		"clone",
		"https://github.com/jesseduffield/lazygit.git",
		lazygitpath,
	})
	vim.fn.system({
		"go",
		"install",
	}, {
		cwd = lazygitpath,
	})

    print("Lazygit should have been installed ! You may need to restart Neovim !")
end

-- vim.opt.rtp:prepend(lazygitpath)
