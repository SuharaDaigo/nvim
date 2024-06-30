return {
  "neoclide/coc.nvim",
  branch = "release",
  event = { "InsertEnter" },
  keys = {
    {mode = "i", "C-j", "C-n", desc = "次の補完候補に"},
    {mode = "i", "C-k", "C-p", desc = "前の補完候補に"},
  },
}
