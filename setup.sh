#!/bin/sh

#creat symbolic link on vimrc and zshrc
echo ----begin----


ln -sf ~/settings/.vimrc ~/.vimrc
ln -sf ~/settings/.zshrc ~/.zshrc

mkdir -p ~/.vim/pack/themes/start

git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start/dracula
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions



source ~/settings/.zshrc
echo ----end----
