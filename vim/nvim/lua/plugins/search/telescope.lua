local telescope = {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('telescope').setup({
			pickers = {
				find_files = {
					layout_strategy = "vertical",
					layout_config = {
						preview_height = 0.5,
						vertical = {
							mirror = false, -- Toggle window to top/bottom
						},
					},
					path_display = function(opts, path)
						local tail = require("telescope.utils").path_tail(path)
						return string.format("%s (%s)", tail, path)
					end,
				},
				live_grep = {
					layout_strategy = "vertical",
					layout_config = {
						preview_height = 0.5,
						vertical = {
							mirror = false, -- Toggle window to top/bottom
						},
					},
				},
				current_buffer_fuzzy_find = {
					layout_strategy = "vertical",
					layout_config = {
						preview_height = 0.5,
						vertical = {
							mirror = false, -- Toggle window to top/bottom
						},
					},
				},
			}
		})
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<Leader>fn', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<Leader>fa', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
		vim.keymap.set('n', '<Leader>fgc', '<cmd>Telescope git_commits<CR>')
		vim.keymap.set('n', '<Leader>fgs', '<cmd>Telescope git_status<CR>')

		function _G.live_grep_in_directory()
			local directory_path = vim.fn.input('Search path: ', '', 'file')
			if directory_path then
				builtin.live_grep({ cwd = directory_path })
			else
				print('No directory specified.')
			end
		end
		vim.keymap.set('n', '<Leader>fd', '<cmd>lua live_grep_in_directory()<CR>', { noremap = true, silent = true })

		vim.keymap.set('n', '<leader>fb', function()
			builtin.buffers {
				attach_mappings = function(_, map)
					map('i', '<C-d>', function(prompt_bufnr)
						local actions = require('telescope.actions')
						local state = require('telescope.actions.state')
						local selection = state.get_selected_entry()
						actions.close(prompt_bufnr)
						vim.cmd('bdelete ' .. selection.bufnr)
						builtin.buffers()
					end)
					return true
				end,
			}
		end, { desc = "Manage buffers" })
	end,
}

return telescope

