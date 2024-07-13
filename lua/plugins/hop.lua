return {
  "phaazon/hop.nvim",
  branch = "v2",
  lazy = false,
  config = function()
    require("hop").setup {
      multi_windows = true,
    }
  end,
  keys = {
    { mode = "", "<leader>s", "<cmd>HopChar2<CR>", desc = "2文字で検索" },
    { mode = "", "<leader>w", "<cmd>HopWord<CR>", desc = "全文字表示" },
    { mode = "", "<leader>/", "<cmd>HopPattern<CR>", desc = "自由文字検索" },
  }
}
