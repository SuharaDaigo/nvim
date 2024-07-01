return {
  "williamboman/mason-lspconfig.nvim",
  event = { "InsertEnter" },
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    local servers = {
      "gopls",
      "lua_ls"
    }

    require("mason").setup {
      ui = {
        border = "rounded",
      },
    }

    require("mason-lspconfig").setup {
      ensure_installed = servers,
    }
  end
}
