local telescope = {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('telescope').setup({})
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end,
}

return telescope

