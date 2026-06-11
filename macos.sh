#!/usr/bin/env bash

# A small set of sane macOS defaults. Run once; some changes need a logout.

# Finder: show hidden files, all extensions, path bar and status bar
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: search the current folder by default, no warning when changing extensions
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Don't litter network or USB volumes with .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Save dialogs always expanded, save to disk (not iCloud) by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Screenshots without window shadows
defaults write com.apple.screencapture disable-shadow -bool true

killall Finder

echo "Done. Log out and back in for everything to take effect."
