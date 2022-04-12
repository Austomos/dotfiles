#!/bin/bash
# install

export DOTFILES_DIR=~/.dotfiles
mkdir $DOTFILES_DIR

# Symlink
ln -s $DOTFILES_DIR/.profile ~/.profile