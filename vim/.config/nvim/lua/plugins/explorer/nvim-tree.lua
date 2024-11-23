local nvimtree = {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require('nvim-tree').setup({
			update_focused_file = {
				enable = true,
				update_cwd = false,
			},
			view = {
				width = '30%',
				side = 'left',
			},
			git = {
				enable = false,
				ignore = false,
			}
		})
	end,
	keys = {
		{ mode = 'n', '<Leader>e', '<cmd>NvimTreeToggle<CR>' },
	}
}

return nvimtree
