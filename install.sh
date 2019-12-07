#!/bin/sh

echo "\n Hey there. Never mind me, just setting up your system.\n"

./defaults.sh

./homebrew.sh

./zsh.sh

./android.sh

./code.sh

cp .vimrc ~
cp .gitconfig ~
cp .gitignore.global ~

# install touchbar kitty 
# configure the two git setups

echo " All done! Enjoy.\n"
