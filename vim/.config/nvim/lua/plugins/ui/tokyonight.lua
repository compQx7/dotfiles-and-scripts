local tokyonight = {
	'folke/tokyonight.nvim',
	config = function()
		require('tokyonight').setup({
			vim.cmd[[colorscheme tokyonight]]
		})
	end,
}

return tokyonight

