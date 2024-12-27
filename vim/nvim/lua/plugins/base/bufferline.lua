local bufferline = {
	'akinsho/bufferline.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('bufferline').setup({
			vim.keymap.set('n', '<C-n>', '<cmd>BufferLineCycleNext<CR>'),
			vim.keymap.set('n', '<C-p>', '<cmd>BufferLineCyclePrev<CR>'),
			vim.keymap.set('n', '<Leader>bp', '<cmd>BufferLineTogglePin<CR>'),
			vim.keymap.set('n', '<Leader>bs', '<cmd>BufferLineSortByRelativeDirectory<CR>'),
			vim.keymap.set('n', '<Leader>bco', '<cmd>BufferLineCloseOthers<CR>'),
			vim.keymap.set('n', '<Leader>bcr', '<cmd>BufferLineCloseRight<CR>'),
			vim.keymap.set('n', '<Leader>bcl', '<cmd>BufferLineCloseLeft<CR>'),
		})
	end,
}

return bufferline

