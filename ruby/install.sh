#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi

echo "  Installing Ruby v2.2.3..."
rbenv install 2.2.3

rbenv rehash

# Define gems to install
RUBY_GEMS=(
    bundler
    filewatcher
    cocoapods
    rails
)

echo "Installing Ruby gems"
gem install ${RUBY_GEMS[@]}
