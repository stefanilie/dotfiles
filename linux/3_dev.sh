echo "\n- Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "- Preparing nvm."
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

echo "\n- Installing & defaulting to node 14 via nvm."
nvm install 16 && nvm use default 16

echo "\n- Installing global packages."
npm install -g expo-cli
npm install -g jest

echo "\n- Installing AndroidStudio deps."
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

#echo "\n- Installing rust dev environment."
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#source $HOME/.cargo/env

#echo "\n- Installing flyctl"
#curl -L https://fly.io/install.sh | sh


#echo "\n- Installing broot."export FLYCTL_INSTALL="/home/stefanilie/.fly"
#  export PATH="$FLYCTL_INSTALL/bin:$PATH"

# cargo install broot


echo "\n- Installing vscode extensions"

code --install-extension 2gua.rainbow-brackets
code --install-extension artdiniz.quitcontrol-vscode
code --install-extension bibhasdn.unique-lines
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension cssho.vscode-svgviewer
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.vscode-npm-script
code --install-extension esbenp.prettier-vscode
code --install-extension flowtype.flow-for-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-complete-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension jasonnutter.search-node-modules
code --install-extension johnpapa.vscode-peacock
code --install-extension jtr.vscode-position
code --install-extension karigari.chat
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode.atom-keybindings
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension msjsdiag.vscode-react-native
code --install-extension naumovs.color-highlight
code --install-extension rebornix.ruby
code --install-extension Shan.code-settings-sync
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension waderyan.gitblame
code --install-extension wayou.vscode-todo-highlight
code --install-extension wingrunr21.vscode-ruby
code --install-extension wix.vscode-import-cost
code --install-extension wmaurer.change-case
code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one
