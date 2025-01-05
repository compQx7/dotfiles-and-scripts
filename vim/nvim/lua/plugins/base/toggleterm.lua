local toggleterm = {
	'akinsho/toggleterm.nvim',
	lazy = false,
	config = function()
		require('toggleterm').setup({
			open_mapping = [[<C-t>]],
			start_in_insert = true,
			insert_mappings = false,
			persist_size = true,
			direction = 'float',
		})
		-- vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], { silent = true })
		-- vim.keymap.set('n', '<Leader>ts', '<cmd>ToggleTerm<CR>', { silent = true })

		-- local terminal = require("toggleterm.terminal").Terminal
		-- local lazygit = terminal:new({
		-- 	cmd = "lazygit",
		-- 	hidden = true,
		-- 	on_open = function(term)
		-- 		-- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<Leader>tg", "<Cmd>close<CR>", { noremap = true, silent = true })
		-- 		vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-t>", "<Cmd>close<CR>", { noremap = true, silent = true })
		-- 	end,
		-- })
		--
		-- function _lazygit_toggle()
		-- 	lazygit:toggle()
		-- end
		--
		-- vim.api.nvim_set_keymap("n", "<Leader>tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}

return toggleterm

