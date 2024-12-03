local toggleterm = {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup({
			open_mapping = [[<Leader>to]],
		})
		vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], { silent = true })

		local terminal = require("toggleterm.terminal").Terminal
		local lazygit = terminal:new({
			cmd = "lazygit",
			direction = "float",
			hidden = true
		})

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}

return toggleterm

