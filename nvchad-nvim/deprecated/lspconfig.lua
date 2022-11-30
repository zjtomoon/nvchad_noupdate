local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require('lspconfig')

   -- lspservers with default config
   local servers = {
     "gopls",
     "rust_analyzer",
     "pyright",
     "sumneko_lua",
     "bashls",
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
      }
   end

  lspconfig.tsserver.setup {
       on_attach = function(client, bufnr)
          client.resolved_capabilities.document_formatting = false
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,
   }
  lspconfig.sumneko_lua.setup {
    cmd = { vim.fn.getenv 'HOME' .. '/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server'}
  }
  lspconfig.rust_analyzer.setup {
    cmd = {"rust_analyzer"},
  }
end

return M
