local diffview = {
	'sindrets/diffview.nvim',
	lazy = false,
	config = function()
		require('diffview').setup {
		}
	end,
	keys = {
		{ mode = 'n', '<Leader>hh', '<cmd>DiffviewOpen HEAD~1<CR>' },
		{ mode = 'n', '<Leader>hf', '<cmd>DiffviewFileHistory %<CR>' },
		{ mode = 'n', '<Leader>hc', '<cmd>DiffviewClose<CR>' },
		{ mode = 'n', '<Leader>hd', '<cmd>Diffview<CR>' },
	}
}

return diffview

