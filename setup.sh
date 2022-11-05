#!/bin/sh

#creat symbolic link on vimrc and zshrc
echo ---begin----
ln -sf ~/settings/.vimrc ~/.vimrc
ln -sf ~/settings/.zshrc ~/.zshrc

mkdir -p ~/.vim/pack/themes/start

cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula


source ~/.zshr

