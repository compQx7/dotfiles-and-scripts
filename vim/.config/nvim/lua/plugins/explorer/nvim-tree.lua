local nvimtree = {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	lazy = false,
	dependencies = {
		--'nvim-tree/nivm-web-devicons',
	},
	config = function()
		require('nvim-tree').setup {
			view = {
				width = 30,
			},
			git = {
				enable = false,
				ignore = false,
			}
		}
	end,
	keys = {
		{ mode = 'n', '<Leader>e', '<cmd>NvimTreeToggle<CR>' },
	}
}

return nvimtree
