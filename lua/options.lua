local options = 
{
  -- ファイル
  fileencoding = "utf-8", -- UTF-8に設定
  swapfile = false, 
  hidden = true, -- バッファ切り替え時にファイルの保存不要

  -- クリップボード共有
  clipboard = 'unnamedplus',

  -- メニューとコマンド
  wildmenu = true, -- コマンドラインで補完
  cmdheight = 1, -- コマンドラインの表示行数
  laststatus = 2, -- 下部にステータスラインを表示
  showcmd = true, -- コマンドラインに入力されたコマンドを表示

  -- 検索・置換え
  hlsearch = true, -- ハイライト検索を有効
  incsearch = true, -- インクリメンタルサーチを有効
  matchtime = 1, -- 入力された文字列がマッチするまでにかかる時間

  -- カラースキーム
  termguicolors = true, -- 24 ビットカラーを使用

  -- インデント
  shiftwidth = 4, -- シフト幅を4に設定する
  tabstop = 4, -- タブ幅を4に設定する
  expandtab = true, -- タブ文字をスペースに置き換える
  autoindent = true, -- 自動インデントを有効にする
  smartindent = true, -- インデントを言語に合わせて調整する

  -- 表示
  number = true, -- 行番号を表示
  relativenumber = false, -- 相対行番号を非表示
  wrap = true, -- テキストの自動折り返しを有効に
  showtabline = 2, -- タブラインを表示
  visualbell = true, -- ビープ音を表示する代わりに画面をフラッシュ
  showmatch = true, -- 対応する括弧をハイライト表示

  -- インタフェース
  winblend = 0, -- ウィンドウの不透明度
  pumblend = 0, -- ポップアップメニューの不透明度
  showtabline = 2, -- タブラインを表示する設定
  signcolumn = "yes" -- サインカラムを表示
}

for k, v in pairs(options) do
  vim.o[k] = v
end
