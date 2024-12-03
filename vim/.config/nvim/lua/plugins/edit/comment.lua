local comment = {
	'numToStr/Comment.nvim',
	config = function()
		require('Comment').setup()
		-- vim.keymap.set('n', '<leader>/', '<Plug>Comment', { noremap = false })
		-- vim.keymap.set('n', '<C-_>', api.toggle.linewise.current)
	end
}

return comment

