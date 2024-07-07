return {
  "williamboman/mason.nvim",
  event = "VimEnter",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      icons = {
      }
    })
    
    mason_lspconfig.setup({
      ensure_installed = {
        "html",
        "cssls",
        "lua_ls",
        "clangd",
        "gopls",
        "pyright",
      },
      automatic_installation = true,
    })
  end
}
