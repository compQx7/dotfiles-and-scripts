local aerial = {
	'stevearc/aerial.nvim',
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require('aerial').setup({})
	end,
	vim.keymap.set("n", "<leader>oo", "<cmd>AerialToggle!<CR>", { desc = 'Aerial toggle' }),
	vim.keymap.set("n", "<leader>on", "<cmd>AerialNext<CR>", { desc = '' }),
	vim.keymap.set("n", "<leader>op", "<cmd>AerialPrev<CR>", { desc = '' }),
}

return aerial

