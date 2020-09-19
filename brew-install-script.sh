#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

# Programming Languages
brew cask install java
brew install node
brew install elm
brew install haskell-stack
brew tap homebrew/science
brew install r
brew install awscli

# Dev Tools
brew install git
brew install docker
brew cask install github-desktop
brew cask install atom
brew install basex
brew install scala
brew cask install exist-db
brew install neo4j
brew cask install rstudio 
brew install httpie
brew cask install hyper
brew cask install kitematic
brew cask install oxygen-xml-editor

# Communication Apps
brew cask install keybase
brew cask install slack
brew cask install skype

# Web Tools
brew cask install google-chrome
brew cask install firefox
brew cask install postman

# File Storage
brew cask install dropbox

# Writing Apps
brew cask install basictex
brew cask install tex-live-utility
brew install pandoc
brew install pandoc-citeproc
brew cask install zotero
brew cask install readcube

# Entertainment
brew cask install anki
brew cask install amazon-music
brew cask install minecraft
