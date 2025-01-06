-- filer
local oil = require('oil')
vim.keymap.set("n", "<Space>fe", function()
	-- require("oil").toggle_float()
	oil.open()
end, { desc = "Oil current buffer's directory" })
vim.keymap.set("n", "<Space>fE", function()
	oil.open(".")
end, { desc = "Oil ." })

-- buffer
vim.keymap.set('n', '<C-n>', '<cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-p>', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<Leader>bp', '<cmd>BufferLineTogglePin<CR>')
vim.keymap.set('n', '<Leader>bs', '<cmd>BufferLineSortByRelativeDirectory<CR>')
vim.keymap.set('n', '<Leader>bco', '<cmd>BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<Leader>bcr', '<cmd>BufferLineCloseRight<CR>')
vim.keymap.set('n', '<Leader>bcl', '<cmd>BufferLineCloseLeft<CR>')

-- search
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>fn', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>fa', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>fm', builtin.marks, { desc = 'Telescope marks' })
vim.keymap.set('n', '<Leader>f:', builtin.command_history, { desc = '' })
vim.keymap.set('n', '<Leader>fs', builtin.symbols, { desc = '' })
vim.keymap.set('n', '<Leader>fq', builtin.quickfixhistory, { desc = '' })
vim.keymap.set('n', '<Leader>fd', builtin.diagnostics, { desc = '' })
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>')
vim.keymap.set('n', '<Leader>fgc', '<cmd>Telescope git_commits<CR>')
vim.keymap.set('n', '<Leader>fgs', '<cmd>Telescope git_status<CR>')
vim.keymap.set('n', '<Leader>fr', '<cmd>Telescope resume<CR>')

-- session
vim.keymap.set('n', '<leader>fw', '<cmd>SessionSearch<CR>', { desc = 'Session search' } )
vim.keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>', { desc = 'Save session' } )

-- edit
vim.keymap.set("n", "<leader>oo", "<cmd>AerialToggle!<CR>", { desc = 'Aerial toggle' })
vim.keymap.set("n", "]o", "<cmd>AerialNext<CR>", { desc = '' })
vim.keymap.set("n", "[o", "<cmd>AerialPrev<CR>", { desc = '' })

-- task runner
vim.keymap.set('n', '<Leader>to', '<cmd>OverseerToggle<CR>', { desc = '' })
vim.keymap.set('n', '<Leader>tr', '<cmd>OverseerRun<CR>', { desc = '' })
vim.keymap.set('n', '<Leader>tl', '<cmd>OverseerRestartLast<CR>', { desc = '' })

-- ai
vim.keymap.set({ "n", "x" }, "<leader>ip", "<cmd>ShowCopilotChatActionPrompt<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>io", "<cmd>CopilotChatToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ib", "<cmd>lua CopilotChatBuffer()<cr>", { noremap = true, silent = true })

-- git
vim.keymap.set('n', '<Leader>hh', '<cmd>DiffviewOpen HEAD<CR>', { desc = '' })
vim.keymap.set('n', '<Leader>hf', '<cmd>DiffviewFileHistory %<CR>', { desc = '' })
vim.keymap.set('n', '<Leader>hc', '<cmd>DiffviewClose<CR>', { desc = '' })
vim.keymap.set('n', '<Leader>hd', '<cmd>Diffview<CR>', { desc = '' })

