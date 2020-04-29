# テーマ読み込み
source ~/powerlevel9k/powerlevel9k.zsh-theme

# ls の色設定
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# 履歴設定
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

# 自動補完を有効にする
autoload -Uz compinit ; compinit
# 色を使用
autoload -Uz colors ; colors

# Tabで選択できるように
zstyle ':completion:*:default' menu select=2
# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# ファイル補完候補に色を付ける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash       
# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs              
# 補完キー連打で順に補完候補を自動で補完
setopt auto_menu              
# コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments   
# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst      
# 語の途中でもカーソル位置で補完
setopt complete_in_word       
# 日本語ファイル名等8ビットを通す
setopt print_eight_bit        

# 重複するコマンドは古い方を削除する
setopt hist_ignore_all_dups
# 履歴をすぐに追加する
setopt inc_append_history
# 再ログインしても遡れる
setopt extended_history
# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 他のターミナルとヒストリーを共有
setopt share_history          
# 重複するコマンドが保存されるとき、古い方を削除する。
setopt hist_save_no_dups      

# ビープ音を消す<Paste>
setopt no_beep                

# コマンドを途中まで入力後、historyから絞り込み
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

#pyenv設定
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# ls（カラー表示）
alias ls='ls --color'
alias ll='ls -lG'
alias la='ls -laG'

# safariで開く
alias safari="open -a /Applications/Safari.app"
alias chrome="open -a /Applications/Google\ Chrome.app"
<<<<<<< HEAD

=======
# ls（カラー表示）
alias ls='ls -color'
alias ll='ls -lG'
alias la='ls -laG'
>>>>>>> 31124b96169447c890a5bfd1d102ed6bbdbea67e
# nvimを基本使う
alias vi='nvim'
alias vim='nvim'
#USBデバイスを見る
alias lsusb="system_profiler SPUSBDataType"

# Go言語を使うための準備
export GOPATH=/Users/Taiga/go
export PATH=$PATH:$GOPATH/bin

# メタ文字回避
setopt nonomatch


