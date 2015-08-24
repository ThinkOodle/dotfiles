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

echo "Do you have XCode installed? (y/n)"
read -r response
if [[ $response =~ ^([nN][oO]|[nN])$ ]]; then
  echo "You need to install XCode first. Come back when you're finished"
  open https://itunes.apple.com/us/app/xcode/id497799835?mt=12
fi

cecho "Installing packages..." $lightblue
exit
brew install ${PACKAGES[@]}
brew linkapps macvim

echo "Installing global npm packages..."
npm install marked -g
