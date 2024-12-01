local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- ai
	require('plugins/ai/copilot'),
	-- base
	require('plugins/base/treesitter'),
	-- require('plugins/base/overseer'),
	-- edit
	require('plugins/edit/autopairs'),
	require('plugins/edit/dial'),
	require('plugins/edit/hop'),
	require('plugins/edit/nvim-surround'),
	require('plugins/edit/treesj'),
	require('plugins/edit/ts-comments'),
	-- explorer
	-- require('plugins/search/nvim-tree'),
	require('plugins/search/oil'),
	require('plugins/search/telescope'),
	-- git
	require('plugins/git/gitsigns'),
	-- lsp
	-- require('plugins/lsp'),
	require('plugins/lsp/lspconfig'),
	require('plugins/lsp/nvim-cmp'),
	require('plugins/lsp/cmp-nvim-lsp'),
	require('plugins/lsp/mason'),
	require('plugins/lsp/masonlspconfig'),
	-- require('plugins/lsp/lspsaga'),
	-- ui
	require('plugins/ui/barbar'),
	require('plugins/ui/tokyonight'),
	require('plugins/ui/indent-blankline'),
	require('plugins/ui/lualine'),
	require('plugins/ui/render-markdown'),
	-- require('kevinhwang91/nvim-bqf'),
	-- require('folke/which-key.nvim'),
	-- require({ 'hrsh7th/nvim-cmp' }),
	-- require({ 'L3MON4D3/LuaSnip' }),
	-- require({ 'simrat39/rust-tools.nvim' }),
	-- require({ 'jose-elias-alvarez/typescript.nvim' }),
}

require('lazy').setup(plugins)

