echo "- Preparing nvm."
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

echo "\n- Installing & defaulting to node 10 via nvm."
nvm install 10 && nvm use default 10

echo "\n- Installing global packages."
npm install -g expo-cli
npm install -g jest