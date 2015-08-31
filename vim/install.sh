#!/bin/sh
#
# Vim
#
# This installs some of the common dependencies needed (or at least desired)
# using Vim.

echo "Applying some Vim settings..."

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install the plugins
vim +PluginInstall +qall

# Make Vim directories
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo
mkdir ~/.vim/views
