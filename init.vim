let mapleader = "\<space>"
set number
set showmode
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set autochdir
set encoding=utf-8
set modifiable
set fileencoding=utf-8
set fileencodings=utf-8,cp932
set list
set clipboard+=unnamed,unnamedplus
set wildmode=longest,full
set ambiwidth=double
set breakindent
set breakindentopt=shift:0
set termguicolors

if has('win64')
    " Windowsのときは<CR+LF>を最優先する
    set fileformats=dos,unix,mac
else
    " それ以外のときは<CR>を最優先する
    set fileformats=unix,dos,mac
endif


imap jj <Esc>


"プラグイン管理パッケージインストール"
"初回に:JetpackSyncを実行する必要あり"
let s:jetpackfile = stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif


"プラグイン設定"
"初回インストは:JetpackSync実行"
packadd vim-jetpack
call jetpack#begin()
call jetpack#add("tani/vim-jetpack")
call jetpack#add('tomasr/molokai', { 'as': 'molokai' })
call jetpack#end()


colorscheme molokai
