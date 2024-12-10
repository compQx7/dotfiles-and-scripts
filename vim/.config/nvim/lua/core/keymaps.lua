vim.api.nvim_set_var('mapleader', ' ')

-- TODO: Window size

vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')
vim.keymap.set('n', '<Leader>h', '0')
vim.keymap.set('n', '<Leader>l', '$')
vim.keymap.set('n', '<Leader>m', '%')
vim.keymap.set('n', '<C-p>', ':bp<CR>')
vim.keymap.set('n', '<C-n>', ':bn<CR>')
vim.keymap.set('n', '<Leader>/', ':noh<CR>')

vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')

vim.keymap.set('n', '<C-q>', '<cmd>bd<CR>')

vim.keymap.set('v', 'J', '5j')
vim.keymap.set('v', 'K', '5k')
vim.keymap.set('v', '<Leader>h', '0')
vim.keymap.set('v', '<Leader>l', '$')
vim.keymap.set('v', '<Leader>m', '%')

