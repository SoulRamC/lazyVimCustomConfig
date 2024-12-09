-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
local emmet_language_server = require("lspconfig.configs.emmet_language_server")
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}

require("conform").setup({
  formatters_by_ft = {
    blade = { "blade-formatter" },
  },
})

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})

emmet_language_server.default_config = {
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "pug",
    "typescriptreact",
    "blade",
  },
}
