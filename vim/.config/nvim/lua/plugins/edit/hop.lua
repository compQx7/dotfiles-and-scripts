local hop = {
	'phaazon/hop.nvim',
	branch = 'v2',
	config = function()
		require('hop').setup({
			multi_windows = true,
		})
	end,
	keys = {
		{ mode = 'n', 's', '<cmd>HopChar2<CR>' },
	}
}

return hop

