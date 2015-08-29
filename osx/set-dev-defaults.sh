#
# Sets reasonable OS X defaults for devs
#

echo "Adding Dev Specific OSX Configs..."

# Show hidden files in Finder by default?
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


if [ ! -d "$HOME/.bin/" ]; then
  mkdir "$HOME/.bin"
fi
