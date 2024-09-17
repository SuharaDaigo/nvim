local ColorScheme = "nightfox"

------------ config --------------

-- solarized
if ColorScheme == "solarized" then
  return {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
      vim.cmd.colorscheme 'solarized'
    end
  }
end

-- molokai
if ColorScheme == "molokai" then
  return {
    "tomasr/molokai",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme molokai]]
    end
  }
end


-- nightfox
if ColorScheme == "nightfox" then
  return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme nightfox]]
    end
  }
end


-- tokyonight
if ColorScheme == "tokyonight" then
  return {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme tokyonight-storm]]
    end
  }
end


-- nordの設定
if ColorScheme == "nord" then
  return {
    "nordtheme/vim",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme nord]]
    end
  }
end


-- icebergの設定
if ColorScheme == "iceberg" then
  return {
    "cocopon/iceberg.vim",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme iceberg]]
    end
  }
end
