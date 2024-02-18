function SetWindowTransparent()
	vim.cmd.colorscheme("kanagawa-wave")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormaFloat", { bg = "none" })
end
vim.api.nvim_create_autocmd("ColorScheme", { callback = SetWindowTransparent })
