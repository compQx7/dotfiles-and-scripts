local aerial = {
	'stevearc/aerial.nvim',
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require('aerial').setup({})
	end,
	-- keys = {
	-- 	{ 'n', '<leader>o', '<cmd>AerialToggle!<CR>' },
	-- }
}

return aerial

