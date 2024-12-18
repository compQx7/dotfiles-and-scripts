local nvimcmp = {
	'hrsh7th/nvim-cmp',
	-- dependencies = {
	-- 	'hrsh7th/cmp-buffer',
	-- 	'hrsh7th/cmp-nvim-lsp',
	-- 	'hrsh7th/cmp-path',
	-- 	-- 'hrsh7th/cmp-nvim-lua',
	-- 	-- 'hrsh7th/cmp-vsnip',
	-- },
	event = {'InsertEnter'},
	-- config = function()
	-- 	require('cmp').setup({
	-- 		mapping = cmp.mapping.preset.insert({
	-- 			['<C-y>'] = cmp.mapping.confirm({ select = true }),
	-- 			['<C-e>'] = cmp.mapping.close(),
	-- 			-- ['<C-e>'] = cmp.mapping.abort(),
	-- 		}),
	-- 		sources = {
	-- 			{ name = 'nvim_lsp' },
	-- 			{ name = 'buffer' },
	-- 			{ name = 'path' },
	-- 			-- { name = 'nvim_lua' },
	-- 			-- { name = 'vsnip' },
	-- 		},
	-- 	})
	-- end,
}

return nvimcmp

