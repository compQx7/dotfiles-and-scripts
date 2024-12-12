local dial = {
	'monaqa/dial.nvim',
	config = function()
		local augend = require("dial.augend")
		local dial = require("dial.config")

		dial.augends:register_group{
			default = {
				-- Add a custom rule for toggling `true` and `false`
				augend.constant.new{
					elements = {"true", "false"}, -- Elements to toggle between
					word = true, -- Match whole words only
					cyclic = true, -- Loop back to the start (e.g., false -> true)
				},
				-- Preserve other default rules
				augend.integer.alias.decimal, -- Decimal integers
				augend.integer.alias.hex, -- Hexadecimal numbers
				augend.date.alias["%Y/%m/%d"], -- Dates in YYYY/MM/DD format
			},
		}

		-- キーマッピングの例（オプション）
		vim.api.nvim_set_keymap("n", "<C-a>", require("dial.map").inc_normal(), {noremap = true})
		vim.api.nvim_set_keymap("n", "<C-x>", require("dial.map").dec_normal(), {noremap = true})
		vim.api.nvim_set_keymap("v", "<C-a>", require("dial.map").inc_visual(), {noremap = true})
		vim.api.nvim_set_keymap("v", "<C-x>", require("dial.map").dec_visual(), {noremap = true})
		vim.api.nvim_set_keymap("v", "g<C-a>", require("dial.map").inc_gvisual(), {noremap = true})
		vim.api.nvim_set_keymap("v", "g<C-x>", require("dial.map").dec_gvisual(), {noremap = true})
	end
}

return dial

