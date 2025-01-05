vim.api.nvim_set_var('mapleader', ' ')

vim.keymap.set({ 'n', 'x' }, 'J', '5j')
vim.keymap.set({ 'n', 'x' }, 'K', '5k')
vim.keymap.set({ 'n', 'x' }, '<Leader>h', '0')
vim.keymap.set({ 'n', 'x' }, '<Leader>l', '$')
vim.keymap.set({ 'n', 'x' }, '<Leader>m', '%')

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +4<CR>')
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -4<CR>')

vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', '<Leader>/', ':noh<CR>')

vim.keymap.set('n', ']q', ':cnext<CR>')
vim.keymap.set('n', '[q', ':cprev<CR>')

vim.keymap.set('n', '<C-p>', ':bp<CR>')
vim.keymap.set('n', '<C-n>', ':bn<CR>')
vim.keymap.set('n', '<C-q>', '<cmd>bd<CR>')

-- plugins

-- filer
vim.keymap.set("n", "<Space>fe", function()
	-- require("oil").toggle_float()
	require("oil").open()
end, { desc = "Oil current buffer's directory" })
vim.keymap.set("n", "<Space>fE", function()
	require("oil").open(".")
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

