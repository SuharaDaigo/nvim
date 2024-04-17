return {
  { 'tomasr/molokai',
    lazy = false,
    priority = 1000,
    config = function()
    vim.cmd[[colorscheme molokai]]

    -- Example config in lua
    --vim.g.molokai_contrast = true
    --vim.g.nord_borders = false
    --vim.g.nord_disable_background = true
    --vim.g.nord_italic = false
    --vim.g.nord_uniform_diff_background = true
    --vim.g.nord_bold = false

    -- Load the colorscheme
    --require('molokai').set()
    end,
  }
}
