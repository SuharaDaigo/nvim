return {
  event = "VimEnter",
  'akinsho/bufferline.nvim',
  version = "*",
  config = function()
    require("bufferline").setup {}
  end
}
