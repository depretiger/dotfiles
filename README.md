# Vimとかの設定ファイル
## 初期設定
1. cd ~
2. git clone https://github.com/depretiger/dotfiles.git
3. ln -s ~/dotfiles/.vimrc .vimrc 
4. mkdir .vim
5. ln -s ~/dotfiles/colors .vim/colors

## zsh
1. sudo yum install zsh
2. chsh -s /bin/zsh
3. ln -s ~/dotfiles/.zshrc .zshrc
4. git clone git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
