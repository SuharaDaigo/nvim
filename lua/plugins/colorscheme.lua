-- ここの""の中を変えればカラースキームを変えられる
local ColorScheme = "iceberg"


-- nordの設定
if ColorScheme == "nord" then
  return {
    "nordtheme/vim",
    lazy = false,
    config = function()
      vim.cmd[[colorscheme nord]]
    end
  }
end


-- icebergの設定
if ColorScheme == "iceberg" then
  return {
    { "cocopon/iceberg.vim" ,
      lazy = false,
      config = function()
        vim.cmd[[colorscheme iceberg]]
      end
    }
  }
end
