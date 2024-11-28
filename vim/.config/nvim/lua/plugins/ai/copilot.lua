local copilot = {
	'github/copilot.vim',
	lazy = false,
	keys = {
		vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)'),
	},
}

return copilot

