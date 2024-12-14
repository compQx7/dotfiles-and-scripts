local copilot = {
	'github/copilot.vim',
	lazy = false,
	keys = {
		vim.keymap.set('i', '<C-y>', '<Plug>(copilot-accept-line)'),
		vim.keymap.set('i', '<C-l>', '<Plug>(copilot-accept-word)'),
		vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)'),
		vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)'),
		vim.keymap.set('i', '<M-i>', '<Plug>(copilot-suggest)'),
	},
}

return copilot

