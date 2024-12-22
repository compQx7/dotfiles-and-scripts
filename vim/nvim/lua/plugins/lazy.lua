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
	require('plugins/ai/copilot-chat'),

	-- base
	require('plugins/base/aerial'),
	require('plugins/base/toggleterm'),
	require('plugins/base/treesitter'),
	require('plugins/base/fidget'),
	require('plugins/base/autosession'),
	require('plugins/base/bufferline'),
	-- require('plugins/base/overseer'),

	-- edit
	require('plugins/edit/autopairs'),
	require('plugins/edit/dial'),
	require('plugins/edit/hop'),
	require('plugins/edit/nvim-surround'),
	require('plugins/edit/treesj'),
	-- TODO: Considering other plugins. vim-illuminate
	require('plugins/edit/cursorword'),

	require('plugins/edit/ts-comments'),
	require('plugins/edit/ts-autotag'),
	-- require('plugins/edit/comment'),
	-- require('plugins/edit/lsp_signature'),

	-- search
	-- require('plugins/search/nvim-tree'),
	require('plugins/search/oil'),
	require('plugins/search/telescope'),
	-- require('plugins/search/telescope-file-browser'),
	-- require('plugins/search/fzf'),

	-- git
	require('plugins/git/diffview'),
	require('plugins/git/gitsigns'),

	-- lsp
	-- require('plugins/lsp'),
	require('plugins/lsp/lspconfig'),
	require('plugins/lsp/mason'),
	require('plugins/lsp/masonlspconfig'),
	require('plugins/lsp/nvim-cmp'),
	require('plugins/lsp/cmp-nvim-lsp'),
	require('plugins/lsp/cmp-buffer'),
	require('plugins/lsp/cmp-cmdline'),
	require('plugins/lsp/cmp-path'),
	-- lint
	require('plugins/lsp/ale'),
	-- require('plugins/lsp/lspsaga'),
	-- require({ 'L3MON4D3/LuaSnip' }),
	-- require({ 'simrat39/rust-tools.nvim' }),
	-- require({ 'jose-elias-alvarez/typescript.nvim' }),

	-- ui
	require('plugins/ui/tokyonight'),
	-- require('plugins/ui/nightfox'),
	-- require('plugins/ui/kanagawa'),

	require('plugins/ui/indent-blankline'),
	require('plugins/ui/lualine'),
	require('plugins/ui/render-markdown'),

	-- quickfix でプレビューできる
	-- require('kevinhwang91/nvim-bqf'),
	-- require('folke/which-key.nvim'),
}

require('lazy').setup(plugins)

