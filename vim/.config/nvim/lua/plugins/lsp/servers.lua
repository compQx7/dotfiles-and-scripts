local lspconfig = require('lspconfig')

-- 共通のLSP設定
local function setup_server(server_name, opts)
    opts = opts or {}

    lspconfig[server_name].setup(opts)
end

-- LSP補完のための設定
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', '<Leader>k', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', '<Leader>ar', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<Leader>aa', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', '<Leader>ae', vim.diagnostic.open_float, bufopts)
	vim.keymap.set('n', '<Leader>g]', vim.diagnostic.goto_next, bufopts)
	vim.keymap.set('n', '<Leader>g[', vim.diagnostic.goto_prev, bufopts)
	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
	)
	vim.cmd [[
		set updatetime=500
		highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
		highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
		highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
		augroup lsp_document_highlight
			autocmd!
			autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
			autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
		augroup END
	]]
end

-- サーバーごとの個別設定
local servers = {
    rust_analyzer = {
		filetypes = { "rust" },
		capabilities = capabilities,
		on_attach = on_attach,
		-- cmd = { "/usr/local/bin/rust-analyzer" },
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = { command = "clippy" },
            },
        },
    },
    ts_ls = {
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
		capabilities = capabilities,
		on_attach = on_attach,
        settings = {
            completions = { completeFunctionCalls = true },
        },
    },
    omnisharp = {
		filetypes = { "csharp" },
		capabilities = capabilities,
		on_attach = on_attach,
        cmd = { "omnisharp" },
        root_dir = lspconfig.util.root_pattern(".sln", ".csproj", ".git"),
    },
}

-- 各サーバーの設定を適用
for server, opts in pairs(servers) do
    setup_server(server, opts)
end

