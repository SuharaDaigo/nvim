return {
  "williamboman/mason.nvim",
  event = "VimEnter",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local icons = require("icons")

    mason.setup({
      ui= {
        icons = {
          package_installed = icons.ui.Check,
          package_pending = icons.ui.ChevronRight,
          package_uninstalled = icons.ui.Close
        }
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
