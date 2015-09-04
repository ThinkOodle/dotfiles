#
# Sets reasonable OS X defaults
#

echo "Configuring OSX..."

################################################################################
# General Settings
###############################################################################

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Save to disk, rather than iCloud, by default?
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Speed up Mission Control animations and grouping windows by application
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

# Set email addresses to copy as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false


################################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###############################################################################

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Disable display from automatically adjusting brightness?
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false


###############################################################################
# General Power and Performance modifications
###############################################################################

# Speed up wake from sleep to 24 hours from an hour
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/
sudo pmset -a standbydelay 86400


###############################################################################
# Finder
###############################################################################

# Show icons for hard drives, servers, and removable media on the desktop?
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show all filename extensions in Finder by default?
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar in Finder by default?
defaults write com.apple.finder ShowStatusBar -bool true

# Show the pathbar
defaults write com.apple.finder ShowPathbar -bool true

# Use column view in all Finder windows by default?
defaults write com.apple.finder FXPreferredViewStyle Clmv

# Avoid creation of .DS_Store files on network volumes?
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
