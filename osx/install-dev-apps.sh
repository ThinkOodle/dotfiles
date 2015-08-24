#!/bin/sh
#
# Installs all of the dev apps
#

# Define apps to install for devs
DEVCASKS=(
    firefox
    iterm2
    macvim
    sequel-pro
    vagrant
)

echo "Installing dev apps..."
brew cask install ${DEVCASKS[@]}
