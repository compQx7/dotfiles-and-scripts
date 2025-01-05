-- 汎用関数

local M = {}

-- local is_vscode = vim.g.vscode
M.is_vscode = vim.fn.exists('g:vscode') == 1

--- Searches for a specified file by traversing up the directory tree from the current buffer's directory.
-- @param file_name The name of the file to search for.
-- @param include_file_name Boolean indicating whether to include the file name in the returned path.
-- @return The path to the directory containing the file, or the full file path if include_file_name is true. Returns nil if the file is not found.
function M.find_file_path(file_name, include_file_name)
	local current_path = vim.fn.expand('%:p:h')
	while current_path ~= '/' do
		local file_path = current_path .. '/' .. file_name
		if vim.fn.filereadable(file_path) == 1 then
			if include_file_name then
				return file_path
			else
				return current_path
			end
		end
		current_path = vim.fn.fnamemodify(current_path, ':h')
	end
	return nil
end

return M

