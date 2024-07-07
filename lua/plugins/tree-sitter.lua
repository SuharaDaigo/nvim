return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPost", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "json",
        "html",
        "css",
        "javascript",
        "typescript",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "c",
        "cpp",
        "dockerfile",
        "go",
        "python",
      },
    }
  end
}
