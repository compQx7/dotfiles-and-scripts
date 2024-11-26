local treesitter = {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	build = ":TSUpdate",
	install = function()
		require("nvim-treesitter.install").setup({
			prefer_git = false,
			compilers = { "gcc" },
		})
	end,
	config = function()
		require('nvim-treesitter.configs').setup({
			auto_install = false,
			ensure_installed = {
				"bash",
				"c",
				"c_sharp",
				"cpp",
				"css",
				"diff",
				"dockerfile",
				"gitcommit",
				"gitignore",
				"go",
				"html",
				"ini",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"mermaid",
				"python",
				"query",
				"rust",
				"scss",
				"sql",
				"typescript",
				"tsx",
				"toml",
				"vim",
				"vimdoc",
				"yaml",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}

return treesitter

