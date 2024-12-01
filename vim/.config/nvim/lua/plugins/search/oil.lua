local oil = {
	'stevearc/oil.nvim',
	config = function()
		require('oil').setup({
		})
		vim.keymap.set("n", "<Space>eo", function()
			require("oil").open()
		end, { desc = "Oil current buffer's directory" })
		vim.keymap.set("n", "<Space>ec", function()
			require("oil").open(".")
		end, { desc = "Oil ." })
	end,
}

return oil

