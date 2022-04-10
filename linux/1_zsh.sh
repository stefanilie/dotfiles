
echo "\n- Copying zshrc."
cp .zshrc ~

echo ¨\n- Installing zsh¨
sudo apt-get install zsh

echo "\n- Installing oh-my-zsh."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
