#!/bin/sh

#creat symbolic link on vimrc and zshrc
echo ---begin----
ln -sf ~/settings/.vimrc ~/.vimrc
ln -sf ~/settings/.zshrc ~/.zshrc
source ~/.zshrv
