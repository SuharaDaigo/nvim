local set = vim.opt -- vim.optを短縮

-- ファイル
set.fileencoding = "utf-8" -- UTF-8に設定
set.swapfile = false 
set.hidden = true -- バッファ切り替え時にファイルの保存不要

-- クリップボード共有
set.clipboard:append({ "unnamedplus" })

-- メニューとコマンド
set.wildmenu = true -- コマンドラインで補完
set.cmdheight = 1 -- コマンドラインの表示行数
set.laststatus = 2 -- 下部にステータスラインを表示
set.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換え
set.hlsearch = true -- ハイライト検索を有効
set.incsearch = true -- インクリメンタルサーチを有効
set.matchtime = 1 -- 入力された文字列がマッチするまでにかかる時間

-- カラースキーム
set.termguicolors = true -- 24 ビットカラーを使用

-- インデント
set.shiftwidth = 2 -- シフト幅を4に設定する
set.tabstop = 2 -- タブ幅を4に設定する
set.expandtab = true -- タブ文字をスペースに置き換える
set.autoindent = true -- 自動インデントを有効にする
set.smartindent = true -- インデントを言語に合わせて調整する

-- 表示
set.number = true -- 行番号を表示
set.relativenumber = false -- 相対行番号を非表示
set.wrap = false -- テキストの自動折り返しを有効に
set.showtabline = 2 -- タブラインを表示
set.visualbell = true -- ビープ音を表示する代わりに画面をフラッシュ
set.showmatch = true -- 対応する括弧をハイライト表示

-- インタフェース
set.winblend = 0 -- ウィンドウの不透明度
set.pumblend = 0 -- ポップアップメニューの不透明度
set.showtabline = 2 -- タブラインを表示する設定
set.signcolumn = "yes" -- サインカラムを表示

---- 行番号の色を変更
--vim.cmd("highlight LineNr guifg=#8a70ac")

-- カーソルの形状
vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- tex
if vim.fn.has('mac') == 1 then
  vim.g['vimtex_view_method'] = 'skim'
else
  vim.g['vimtex_view_method'] = 'zathura'
end
if vim.fn.has('nvim') == 1 then
  vim.g['vimtex_compiler_progname'] = 'nvr'
end
