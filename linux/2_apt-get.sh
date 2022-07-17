echo "\n- Adding 1password apt-repo"
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo "\n- Adding telegram-desktop apt-repo"
sudo add-apt-repository ppa:atareao/telegram

echo "\n- Adding spotify-client apt-repo"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update

echo "\n- Adding albert apt-repo"
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_21.10/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt-get update

echo "\n- Adding howdy https://github.com/boltgolt/howdysudo add-apt-repository ppa:boltgolt/howdy apt-repo"
sudo add-apt-repository ppa:boltgolt/howdy
sudo apt update

echo "\n- Installing vscode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt-get update
sudo apt-get install code

echo "\n- Installing yt-dlp"
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo "\n- Installing go"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz

echo "\n- Installing games"
sudo apt-get install lutris steam

echo "\n- Installing utils"
sudo apt-get install 1password albert audacity calibre deluge discord ffmpeg gimp howdy mixxx okular python3.9-venv spotify-client taskwarrior telegram tilix transmission vlc 

echo "\n- Installing nordvpn"
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

echo "\n- Installing fun stuff"
sudo apt-get install cowsay figlet neofetch lolcat toilet

echo "\n- Installing cheat"
go install github.com/cheat/cheat/cmd/cheat@latest

echo "\n- Install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "\n- Install pix"
python3 -m pip install --user pipx
python3 -m pipx ensurepath

echo "\n- Install virtualenv"
pipx install virtualenv