local autosession = {
	'rmagatti/auto-session',
	dependencies = {
		'nvim-telescope/telescope.nvim',
	},
	lazy = false,
	config = function()
		require('auto-session').setup({
			session_lens = {
				-- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
				load_on_setup = true,
				previewer = false,
				mappings = {
					-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
					delete_session = { "i", "<C-D>" },
					alternate_session = { "i", "<C-S>" },
					copy_session = { "i", "<C-Y>" },
				},
				-- Can also set some Telescope picker options
				-- For all options, see: https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt#L112
				theme_conf = {
					lazyout_strategy = "center",
					layout_config = {
					  width = 0.7, -- Can set width and height as percent of window
					  height = 0.5,
					},
				},
			},
		})
	end,
}

return autosession

