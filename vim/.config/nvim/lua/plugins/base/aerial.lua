local aerial = {
	'stevearc/aerial.nvim',
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require('aerial').setup({})
	end,
	vim.keymap.set("n", "<leader>to", "<cmd>AerialToggle!<CR>", { desc = 'Aerial toggle' })
}

return aerial

