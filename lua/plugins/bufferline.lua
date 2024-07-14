return {
  event = { "BufReadPre", "BufNewFile" },
  'akinsho/bufferline.nvim',
  version = "*",
  config = function()
    require("bufferline").setup {}
    vim.keymap.set('n', '<leader>w', '<CMD>BufferLinePickClose<CR>')
    vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
  end
}
