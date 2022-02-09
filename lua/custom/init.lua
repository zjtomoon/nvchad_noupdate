-- This is an example init file , its supposed to be placed in /lua/custom/

-- This is where your custom modules and plugins go.
-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!

-- MAPPINGS
local map = require("core.utils").map
local override_req = require("core.utils").override_req
local plugin_settings = require("core.utils").load_config().plugins
local present,packer = pcall(require,plugin_settings.options.packer.init_file)

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")
-- NOTE: the 4th argument in the map function can be a table i.e options but its most likely un-needed so dont worry about it
require "custom.mappings.mappings"

-- Install plugins
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
   use {
      "max397574/better-escape.nvim",
      event = "InsertEnter",
   }

   use {
      "user or orgname/reponame",
      --further packer options
   }

   use {
      "lewis6991/impatient.nvim"
   }

   use {
      "nathom/filetype.nvim"
   }

   -- lsp stuff

   use {
      "neovim/nvim-lspconfig",
      module = "lspconfig",
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lspconfig"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end,
      config = override_req("lspconfig", "custom.plugins.configs.lspconfig"),
   }

   use {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_settings.status.lspsignature,
      after = "nvim-lspconfig",
      config = override_req("signature", "custom.plugins.configs.others", "signature"),
   }

   -- load luasnips + cmp related in insert mode only

   use {
      "rafamadriz/friendly-snippets",
      module = "cmp_nvim_lsp",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      event = "InsertEnter",
   }

   -- cmp by default loads after friendly snippets
   -- if snippets are disabled -> cmp loads on insertEnter!
   use {
      "hrsh7th/nvim-cmp",
      disable = not plugin_settings.status.cmp,
      event = not plugin_settings.status.snippets and "InsertEnter",
      after = plugin_settings.status.snippets and "friendly-snippets",
      config = override_req("nvim_cmp", "custom.plugins.configs.cmp", "setup"),
   }

   use {
      "L3MON4D3/LuaSnip",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = override_req("luasnip", "custom.plugins.configs.others", "luasnip"),
   }

   use {
      "saadparwaiz1/cmp_luasnip",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      after = plugin_settings.options.cmp.lazy_load and "LuaSnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
      disable = not plugin_settings.status.cmp,
      after = (plugin_settings.status.snippets and "cmp_luasnip") or "nvim-cmp",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-buffer",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lsp",
   }

   use {
      "hrsh7th/cmp-path",
      disable = not plugin_settings.status.cmp,
      after = "cmp-buffer",
   }

   use {
      "windwp/nvim-autopairs",
      disable = not plugin_settings.status.autopairs,
      after = plugin_settings.options.autopairs.loadAfter,
      config = override_req("nvim_autopairs", "custom.plugins.configs.others", "autopairs"),
   }

   use {
      "williamboman/nvim-lsp-installer",
   }

   use {
      "fatih/vim-go"
   }

   use {
      "farmergreg/vim-lastplace"
   }

   use {
      "mbbill/undotree",
      opt = true,
      cmd = "UndotreeToggle",
   }

   use {
      "tpope/vim-surround",
      keys = {"c", "d", "S"},
   }

   use {
      "Chiel92/vim-autoformat",
      cmd = "Autoformat",
   }

   use {
      "dstein64/vim-startuptime",
      cmd = "StartupTime",
   }

   use {
      "karb94/neoscroll.nvim",
      opt = true,
      config = function()
         require("neoscroll").setup()
      end,

      -- lazy loading
      setup = function()
         require("core.utils").packer_lazy_load "neoscroll.nvim"
      end,
   }

end)

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough
