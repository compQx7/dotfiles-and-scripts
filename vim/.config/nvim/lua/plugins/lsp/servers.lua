local lspconfig = require('lspconfig')

-- 共通のLSP設定
local function setup_server(server_name, opts)
    opts = opts or {}

    -- LSP補完のための設定
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    opts.capabilities = capabilities

    -- 各サーバー固有の設定
    opts.on_attach = function(client, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, bufopts)
    end

    lspconfig[server_name].setup(opts)
end

-- サーバーごとの個別設定
local servers = {
    rust_analyzer = {
		-- cmd = { "/usr/local/bin/rust-analyzer" },
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = { command = "clippy" },
            },
        },
    },
    ts_ls = {
        settings = {
            completions = { completeFunctionCalls = true },
        },
    },
    omnisharp = {
        cmd = { "omnisharp" },
        root_dir = lspconfig.util.root_pattern(".sln", ".csproj", ".git"),
    },
}

-- 各サーバーの設定を適用
for server, opts in pairs(servers) do
    setup_server(server, opts)
end

