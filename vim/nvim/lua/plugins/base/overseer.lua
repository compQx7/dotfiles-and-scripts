local plug = {
  'stevearc/overseer.nvim',
	-- dependencies = {
	-- 	'nvim-lua/plenary.nvim',
	-- 	'nvim-telescope/telescope.nvim',
	-- },
	config = function()
		local overseer = require("overseer")
		local find_file_path = require('utils').find_file_path

		overseer.setup({
			templates = { 'builtin' }
		})

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

		overseer.register_template({
			name = "Cargo Test",
			builder = function(params)
				return {
					cmd = "cargo",
					args = { "test" },
					cwd = find_file_path("Cargo.toml", false),
					components = {
						{ "default" },
						-- { "on_output_quickfix", open = true },
						-- { "on_result_diagnostics_quickfix", open = true },
						{ "display_duration" },
					},
				}
			end,
			condition = {
				callback = function()
					-- Cargo.toml が存在する場合にのみタスクを有効化
					local path = find_file_path("Cargo.toml", false)
					return path
				end,
			},
		})

		vim.keymap.set('n', '<Leader>tt', '<cmd>OverseerToggle<CR>', { desc = '' })
		vim.keymap.set('n', '<Leader>tr', '<cmd>OverseerRun<CR>', { desc = '' })
	end,
}

return plug

