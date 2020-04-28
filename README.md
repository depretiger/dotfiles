# Vimとかの設定ファイル

## nvim
1. cd ~
2. git clone https://github.com/depretiger/dotfiles.git
3. ln -s ~/dotfiles/.vimrc .vimrc 
4. mkdir .vim
5. ln -s ~/dotfiles/colors .vim/colors
6. yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
7. yum install -y neovim python3-neovim
8. mkdir  .config
9. ln -s ~/dotfiles/init.vim .config/nvim/init.vim
10. pip install -U neovim
11. mkdir -p ~/.cache/dein
12. cd ~/.cache/dein
13. curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
14. sh ./installer.sh ~/.cache/dein
15. ln -s ~/dotfiles/dein.toml ~/.config/nvim/dein.toml
16. ln -s ~/dotfiles/dein_lazy.toml ~/.config/nvim/dein_lazy.toml

## zsh
1. sudo yum install zsh
2. chsh -s /bin/zsh
3. ln -s ~/dotfiles/.zshrc .zshrc
4. git clone git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
5. git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/themes/powerlevel9k
