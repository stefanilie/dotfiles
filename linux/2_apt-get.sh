echo ¨\n- Adding 1password apt-repo¨
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo ¨\n- Adding telegram-desktop apt-repo¨
sudo add-apt-repository ppa:atareao/telegram

echo ¨\n- Adding spotify-client apt-repo¨
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update

echo ¨\n- Installing vscode¨
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt-get update
sudo apt-get install code

echo ¨\n- Installing yt-dlp¨
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo ¨\n- Installing games
sudo apt-get install lutris steam

echo "\n- Installing utils"
sudo apt-get install 1password audacity gimp spotify-client telegram tilix vlc 

echo "\n- Installing fun stuff"
sudo apt-get install cowsay figlet neofetch lolcat toilet

