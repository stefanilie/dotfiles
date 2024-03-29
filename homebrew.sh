#!/bin/sh

# Install Homebrew if it's not already present.
if command -v brew >/dev/null 2>&1; then
  echo " Homebrew already exists. Skipping install.\n"
else
  echo " Installing Homebrew. (http://brew.sh)"
  echo " Please install the command line tools when prompted, and press 'enter' after it's done.\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  echo " Homebrew successfully installed.\n"
fi

echo " brew update to make sure we’re using the latest Homebrew."
brew update

echo "\n brew upgrade any already-installed formulae."
brew upgrade

echo "\n brew bundling."
brew bundle

echo "\n Removing outdated versions from the cellar."
brew cleanup

echo " Successfully installed all brew apps.\n"

echo " Homebrew install done.\n"
