"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Taiga/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/Taiga/.cache/dein')
  call dein#begin('/Users/Taiga/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/Taiga/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')
  call dein#add('othree/yajs.vim')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


set encoding=utf-8
scriptencoding utf-8

" japanesqueを使う 
colorscheme japanesque

" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
