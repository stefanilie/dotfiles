#!/bin/sh

echo "\n Hey there. Never mind me, just setting up your system.\n"

./zsh.sh

./defaults.sh

./homebrew.sh

./react_native.sh

./code.sh

cp .vimrc ~

# Prompt for email
read -p "Enter your email: " email

# Replace $EMAIL with the provided email in .gitconfig
# Using '' after -i to avoid creating a backup on macOS
sed -i '' "s/\$EMAIL/$email/" .gitconfig
cp .gitconfig ~

cp .gitignore.global ~

echo " All done! Enjoy.\n"
