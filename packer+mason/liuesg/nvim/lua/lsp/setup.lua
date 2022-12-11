-- the servers that should be automatically installed
local lsp_servers = {
	"sumneko_lua",
	"gopls",
	"pyright",
	"jsonls",
	"html",
	"bashls",
	"tsserver",
	"clangd",
}
-- using plug "nvim-lsp-installer" to ensure the installation
-- should before the lsp config
--require("nvim-lsp-installer").setup({
--	ensure_installed = lsp_servers,
--	automatic_installation = true,
--	ui = {
--		icons = {
--			server_installed = "✓",
--			server_pending = "➜",
--			server_uninstalled = "✗",
--		},
--	},
--})

require("mason").setup({
	github = {
		-- The template URL to use when downloading assets from GitHub.
		-- The placeholders are the following (in order):
		-- 1. The repository (e.g. "rust-lang/rust-analyzer")
		-- 2. The release version (e.g. "v0.3.0")
		-- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
		download_url_template = "https://github.com/%s/releases/download/%s/%s",
		--download_url_template = "git@github.com/%s/releases/download/%s/%s",
	},
})
require("mason-lspconfig").setup()
-- 需要特殊配置的lsp server
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local lsp_server_configs = {
	sumneko_lua = require("lsp.lua"), -- /lua/lsp/lua
}

local lspconfig = require("lspconfig")

local default_on_attach = function(client, bufnr)
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	-- 绑定快捷键
	require("keybindings").mapLSP(buf_set_keymap)
	vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
end

for _, server in pairs(lsp_servers) do
	local options = lsp_server_configs[server]
	if options == nil then
		lspconfig[server].setup({
			on_attach = default_on_attach,
			flags = {
				debounce_text_changes = 150,
			},
		})
	else
		lspconfig[server].setup(options)
	end
end
require("mason-nvim-dap").setup({
    ensure_installed = { "python", "delve" }
})
require("mason-null-ls").setup()
