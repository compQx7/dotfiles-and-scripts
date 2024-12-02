local toggleterm = {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup({
			open_mapping = [[<Leader>to]],
		})
	end,
}

return toggleterm

