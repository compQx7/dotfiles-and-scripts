local lspconfig = require('lspconfig')

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
end

-- 3. completion (hrsh7th/nvim-cmp)
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    -- ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
  }),
  experimental = {
    ghost_text = true,
  },
	completion = {
		autocomplete = { require('cmp.types').cmp.TriggerEvent.TextChanged },
		keyword_length = 2,
	},
	performance = {
		debounce = 200,
	},
})
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "path" },
    { name = "cmdline" },
  },
})

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
		filetypes = { "cs" },
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = { "omnisharp" },
		root_dir = lspconfig.util.root_pattern(".sln", ".csproj", ".git"),
	},
}

-- 各サーバーの設定を適用
for server, opts in pairs(servers) do
    opts = opts or {}
    lspconfig[server].setup(opts)
end

