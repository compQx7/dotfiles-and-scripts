local M = {}

function aerial()
	vim.keymap.set("n", "<leader>to", "<cmd>AerialToggle!<CR>", { desc = 'Aerial toggle' })
end

function oil()
	vim.keymap.set("n", "<Space>eo", function()
		require("oil").open()
	end, { desc = "Oil current buffer's directory" })
	vim.keymap.set("n", "<Space>ec", function()
		require("oil").open(".")
	end, { desc = "Oil ." })
end

function telescope()
	local builtin = require('telescope.builtin')
	function _G.live_grep_in_directory()
		local directory_path = vim.fn.input('Search path: ', '', 'file')
		if directory_path then
			builtin.live_grep({ cwd = directory_path })
		else
			print('No directory specified.')
		end
	end
	vim.keymap.set('n', '<Leader>fn', '<cmd>Telescope find_files<CR>', { desc = 'Telescope find files' })
	vim.keymap.set('n', '<Leader>fa', '<cmd>Telescope live_grep<CR>', { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'Telescope help tags' })
	vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
	vim.keymap.set('n', '<Leader>fd', '<cmd>lua live_grep_in_directory()<CR>', { noremap = true, silent = true })
end

function M.setup()
	aerial()
	oil()
	-- telescope()
end

return M

