vim.api.nvim_create_augroup('FileTypeSpecificSettings', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
	group = 'FileTypeSpecificSettings',
	pattern = 'markdown',
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
	end,
})
vim.api.nvim_create_autocmd('FileType', {
	group = 'FileTypeSpecificSettings',
	pattern = 'rust',
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
	end,
})

