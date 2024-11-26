local telescope = {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('telescope').setup({})
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<Leader>fn', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

		function _G.live_grep_in_directory()
			local directory_path = vim.fn.input('Search path: ', '', 'file')
			if directory_path then
				builtin.live_grep({ cwd = directory_path })
			else
				print('No directory specified.')
			end
		end
		vim.keymap.set('n', '<Leader>fd', '<cmd>lua live_grep_in_directory()<CR>', { noremap = true, silent = true })
	end,
}

return telescope

