local plug = {
  'stevearc/overseer.nvim',
	-- dependencies = {
	-- 	'nvim-lua/plenary.nvim',
	-- 	'nvim-telescope/telescope.nvim',
	-- },
	config = function()
		require('overseer').setup({
			templates = { 'builtin' }
		})
		local overseer = require("overseer")
		overseer.register_template({
			name = "PNPM Build with Env",
			builder = function(params)
			return {
				cmd = "pnpm",
				args = { "-F", params.package, "run", "build" },
				-- env = {
				-- 	NODE_ENV = params.node_env or "production", -- 環境変数
				-- },
				components = { "default", "on_output_quickfix" },
			}
			end,
			params = {
				package = { type = "string", name = "Package Name", optional = false },
				-- node_env = { type = "string", name = "Node Env", optional = true },
			},
			description = "Run build with custom NODE_ENV",
		})
		overseer.register_template({
			name = "Custom Task",
			builder = function(params)
				return {
					cmd = { "echo", "Hello, World!" },
					on_complete = function(task)
						vim.notify("タスクが完了しました: " .. task.name, vim.log.levels.INFO)
					end,
				}
			end,
		})
	end,
}

return plug

