echo "\n- Installing apt packages.\n"
sudo xargs -a packages_list.txt apt install

echo "\n- Setting up gnome-defaults."
sudo gsettings set gsettings.txt