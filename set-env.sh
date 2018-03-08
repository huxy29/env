#! /bin/sh
#
# set-env.sh
# Copyright (C) 2018 root <root@bce-ubuntu-dl>
#
# Distributed under terms of the MIT license.
#

echo "### 更换 apt 源，并更新 ###"
mv /etc/apt/sources.list /etc/apt/sources.list.bak
cat ./apt/sources.list > /etc/apt/sources.list
apt update
apt upgrage

echo "### 安装 vim 并配置 ###"
apt install vim
mkdir -p ~/.vim/autoload
cat ./vim/plug.vim > ~/.vim/autoload/plug.vim
cap ./vim/vimrc > ~/.vimrc

echo "### 安装 zsh 并配置 ###"
apt install zsh
cat ./zsh/zshrc > ~/.zshrc
source ~/.zshrc

echo "### 安装 miniconda ###"
sh ./conda/Miniconda2-latest-Linux-x86_64.sh

echo "### 更换 pypi 源 ###"
mkdir ~/.pip
cat ./pip/pip.conf > ~/.pip/pip.conf

echo "=== 完成 ==="
