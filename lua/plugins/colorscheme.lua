return {
  { 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd[[colorscheme tokyonight]]
    end
  }
}


--  return {
--    { 'tomasr/molokai',
--      lazy = false,
--      priority = 1000,
--      config = function()
--        vim.cmd[[colorscheme molokai]]
--      end
--    }
--  }
