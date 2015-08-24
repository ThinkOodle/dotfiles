#!/bin/sh
#
# Installs all of the fonts
#

# Define fonts to install
FONTS=(
    font-dosis
    font-lato
    font-fontawesome
    font-merriweather
    font-open-sans-condensed
    font-open-sans
)

echo "Installing fonts..."
brew tap caskroom/fonts
brew cask install ${FONTS[@]}
