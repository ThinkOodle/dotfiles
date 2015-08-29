#!/bin/sh
#
# Installs all of the packages
#

# Define packages to install
PACKAGES=(
    git
    macvim --with-override-system-vim
    mysql
    npm
    rbenv
    ruby-build
    wget
)

source $DOTZSH/functions/cecho

cecho "Installing packages..." $lightblue
exit
brew install ${PACKAGES[@]}
brew linkapps macvim

echo "Installing global npm packages..."
npm install marked -g
