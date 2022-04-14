#!/bin/bash

# install
sudo apt-get install zsh

# add .dotfiles
export DOTFILES_DIR=~/.dotfiles
mkdir $DOTFILES_DIR

# Symlink
ln -s $DOTFILES_DIR/.profile ~/.profile
ln -s $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
sudo ln -s $DOTFILES_DIR/bin/* /usr/local/bin/

# zsh and oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv "$HOME/.oh-my-zsh" "$HOME/.dotfiles/zsh/.oh-my-zsh"
export ZSH="$HOME/.dotfiles/zsh/.oh-my-zsh"