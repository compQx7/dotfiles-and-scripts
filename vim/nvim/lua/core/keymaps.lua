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
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<CR>')
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>')

vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', '<Leader>/', ':noh<CR>')

vim.keymap.set('n', '<C-p>', ':bp<CR>')
vim.keymap.set('n', '<C-n>', ':bn<CR>')
vim.keymap.set('n', '<C-q>', '<cmd>bd<CR>')

