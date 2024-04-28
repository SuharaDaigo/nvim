return {
  "nordtheme/vim",
  lazy = false,
  config = function()
    vim.cmd[[colorscheme nord]]
  end
}


--  return {
--    { 'folke/tokyonight.nvim',
--      lazy = false,
--      priority = 1000,
--      opts = {},
--      config = function()
--        vim.cmd[[colorscheme tokyonight]]
--        require("tokyonight").setup({
--          style = "storm",
--            transparent = false, -- Enable this to disable setting the background color
--            terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--            styles = {
--              comments = { italic = true },
--              keywords = { italic = true },
--              functions = {},
--              variables = {},
--              sidebars = "dark", -- style for sidebars, see below
--              floats = "dark", -- style for floating windows
--            }
--        })
--      end
--    }
--  }


--  return {
--    { "cocopon/iceberg.vim" ,
--        lazy = false,
--        config = function()
--            vim.cmd[[colorscheme iceberg]]
--        end
--    }
--  }

