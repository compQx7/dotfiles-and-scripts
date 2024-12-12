local copilotchat = {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
		{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
	},
	config = function()
		local select = require("CopilotChat.select")
		require("CopilotChat").setup({
			debug = true,

			window = {
				layout = "float",
				relative = "editor",
			},
			prompts = {
				Explain = {
					prompt = "/COPILOT_EXPLAIN 選択されたコードの説明を段落をつけて書いてください。",
				},
				Review = {
					prompt = "/COPILOT_REVIEW 選択されたコードをレビューしてください。",
					callback = function(response, source) end,
				},
				Fix = {
					prompt = "/COPILOT_FIX このコードには問題があります。バグを修正したコードに書き直してください。",
				},
				Refactor = {
					prompt = "/COPILOT_GENERATE 明瞭性と可読性を向上させるために、次のコードをリファクタリングしてください。日本語で返答ください。",
				},
				Optimize = {
					prompt = "/COPILOT_REFACTOR 選択したコードを最適化し、パフォーマンスと可読性を向上させてください。説明は猫になりきって日本語でお願いします。",
				},
				BetterNamings = {
					prompt = "/COPILOT_GENERATE 選択されたコードの変数名や関数名を改善してください。日本語で返答ください。",
				},
				Optimize = {
					prompt = "/COPILOT_REFACTOR 選択されたコードを最適化してパフォーマンスと可読性を向上させてください。",
				},
				Docs = {
					prompt = "/COPILOT_DOCS 選択されたコードに対してドキュメンテーションコメントを追加してください。",
				},
				Tests = {
					prompt = "/COPILOT_TESTS 選択されたコードの詳細な単体テスト関数を書いてください。",
				},
				Summarize = {
					prompt = "/COPILOT_GENERATE 選択範囲の要約を書いてください。日本語で返答ください。",
				},
				FixDiagnostic = {
					prompt = "ファイル内の次のような診断上の問題を解決してください:",
					selection = select.diagnostics,
				},
				Commit = {
					prompt = "変更のコミットメッセージをcommitizenの規約に従って日本語で書いてください。タイトルは最大50文字、メッセージは72文字で折り返してください。メッセージ全体をgitcommit言語のコードブロックで囲んでください。",
					selection = select.gitdiff,
				},
				CommitStaged = {
					prompt = "変更のコミットメッセージをcommitizenの規約に従って日本語で書いてください。タイトルは最大50文字、メッセージは72文字で折り返してください。メッセージ全体をgitcommit言語のコードブロックで囲んでください。",
					selection = function(source)
						local select = require("CopilotChat.select")
						return select.gitdiff(source, true)
					end,
				},
			},
		})

		function CopilotChatBuffer()
			local input = vim.fn.input("Quick Chat: ")
			if input ~= "" then
				require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
			end
		end

		vim.api.nvim_set_keymap("n", "<leader>ib", "<cmd>lua CopilotChatBuffer()<cr>", { noremap = true, silent = true })

		function ShowCopilotChatActionPrompt()
			local actions = require("CopilotChat.actions")
			require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
		end

		vim.api.nvim_set_keymap("n", "<leader>ip", "<cmd>lua ShowCopilotChatActionPrompt()<cr>", { noremap = true, silent = true })

		vim.api.nvim_set_keymap("n", "<leader>io", "<cmd>CopilotChatToggle<CR>", { noremap = true, silent = true })
	end,
}

return copilotchat

