#!/bin/bash

# install
sudo apt-get install zsh

# add .dotfiles
export DOTFILES_DIR=~/.dotfiles
mkdir $DOTFILES_DIR

# Symlink
sudo ln -s $DOTFILES_DIR/system/wsl.conf /etc/wsl.conf
sudo ln -s $DOTFILES_DIR/bin/* /usr/local/bin/

ln -s $DOTFILES_DIR/.profile ~/.profile
ln -s $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
ln -s $DOTFILES_DIR/zsh/austo-zsh-theme/austo.zsh-theme $DOTFILES_DIR/zsh/.oh-my-zsh/themes/austo.zsh-theme


# zsh and oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv "$HOME/.oh-my-zsh" "$HOME/.dotfiles/zsh/.oh-my-zsh"
export ZSH="$HOME/.dotfiles/zsh/.oh-my-zsh"