echo "\n- Installing apt packages.\n"
sudo xargs -a packages_list.txt apt install

echo "\n- Adding snap packages."
snap install codium --classic

echo "\n- Installing youtube-dl"
sudo -H pip3 install --upgrade youtube-dl

echo "\n- Setting up gnome-defaults."
sudo gsettings set gsettings.txt