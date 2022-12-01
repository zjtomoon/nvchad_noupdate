local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
      "html",
      "cssls",
      "emmet_ls",
      "clangd",
      "jsonls",
      "gopls",
      "sumneko_lua",
      "rust_analyzer",
      "omnisharp",
      "pylsp",
      "tsserver",
      "denols",
      "angularls",
      "vuels",
    }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
