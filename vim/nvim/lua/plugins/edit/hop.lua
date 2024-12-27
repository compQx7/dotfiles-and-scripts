local hop = {
	'smoka7/hop.nvim',
	branch = 'v2',
	config = function()
		require('hop').setup({
			multi_windows = true,
		})
	end,
	keys = {
		{ mode = { 'n', 'x' }, 's', '<cmd>HopChar2<CR>' },
		{ mode = { 'n' }, 'S', '<cmd>HopLineStart<CR>' },
	}
}

return hop

