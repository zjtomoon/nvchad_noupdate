-- This is an example chadrc file , its supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  relativenumber = true,
}

M.ui = {
   theme = "onedark",
}

-- Install plugins
local userPlugins = require "custom.plugins.plugins" -- path to table

M.plugins = {
   install = userPlugins,

   status = {
     dashboard = true,
     colorizer = true,
   },

   options = {
        lspconfig = {
          setup_lspconf = "custom.plugins.lspconfig",
      },
    },
    default_plugin_config_replace = {
      dashboard = "custom.dashboard",
    },
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
