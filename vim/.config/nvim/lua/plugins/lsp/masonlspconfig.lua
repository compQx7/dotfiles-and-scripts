local masonlspconfig = {
	'williamboman/mason-lspconfig.nvim',
	config = function()
		require('mason-lspconfig').setup({
			ensure_installed = {
				-- "rust_analyzer",
				"ts_ls",
				"omnisharp",
			},
			automatic_installation = true,
		})
	end,
}

return masonlspconfig

