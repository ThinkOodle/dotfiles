#!/bin/sh
#
# Vim
#
# This installs some of the common dependencies needed (or at least desired)
# using Vim.

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install the plugins
vim +PluginInstall +qall
