"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
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
" colorscheme japanesque
colorscheme hybrid
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" :make実行時に自動で保存する
set autowrite
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
hi clear CursorLine
" 行末の1文字先までカーソルを移動できるように
" set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 改行時に前の行のインデントを継続する
set autoindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~
" カーソルラインをハイライト
set cursorline
" スクロールする時に下が見えるようにする
set scrolloff=5
" 0が配置されていても10進数として扱う
set nrformats=
" インサートモードのESCにjjをキーバインド
inoremap  <silent> jj <ESC>:<C-u>w<CR>
" 矢印キー無効
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" コマンドライン履歴の呼び出し
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"Vimのリストをサクサク移動するためのキーマッピング
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"アクティブなファイルが含まれているディレクトリを手早く展開
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" vimでヤンクカットするとクリップボードにもコピーされるようになる これいらない
" set clipboard+=unnamed

" 拡張子の設定
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" previmの設定
let g:previm_open_cmd = 'open -a Safari'

"go-vim設定
let g:go_bin_path = $GOPATH.'/bin'

" Autocomplete-flowの設定
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1

"  latexmkの設定
let g:latex_latexmk_options = '-pdfdvi'
let g:vimtex_compiler_latexmk_engines = { '_' : '-pdfdvi' }
