-- This is an example init file , its supposed to be placed in /lua/custom/

-- This is where your custom modules and plugins go.
-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!

-- MAPPINGS
local map = require("core.utils").map

-- NOTE: the 4th argument in the map function can be a table i.e options but its most likely un-needed so dont worry about it
require "custom.mappings.mappings"

-- Install plugins
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
   use {
      "williamboman/nvim-lsp-installer",
   }

   --go-tools
   -- use {
   --    "fatih/vim-go"
   -- }
   use {
     "ray-x/go.nvim",
     opt = true,
     config = function ()
       require("go").setup()
     end,
     setup = function ()
       require("core.utils").packer_lazy_load "go.nvim"
     end
   }
   
   use {
     "simrat39/rust-tools.nvim",
     opt = true,
     config = function ()
       require('rust-tools').setup()
     end,
     setup = function ()
       require("core.utils").packer_lazy_load "rust-tools.nvim"
     end
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
