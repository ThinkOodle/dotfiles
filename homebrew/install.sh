#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

else
  echo "  You already have Homebrew. Skipping installation."
fi

# Define packages to install
PACKAGES=(
    coreutils
    git
    grc
    macvim --with-override-system-vim
    mysql
    npm
    rbenv
    ruby-build
    spark
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}
brew linkapps macvim
