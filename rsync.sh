# 1. create ssh key
ssh-keygen

# 2. copy it to the destination
ssh-copy-id -i /path/to/specific/id_rsa.pub username@ip.ip.ip.ip

# 3. start doing the scripts 

#!/bin/sh

# CameraRoll
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /home/stefanilie/Syncthing/CameraRoll2/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Family/Pictures/Pixel\ 5/Camera

# 1TB
sudo rsync -rv --progress --exclude="torrents/" --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/1TB/shares/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment


# MildlyImportantVideos
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/Mildly\ Important\ Videos/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Meme/MildlyImportantVideos

# documentaries
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/documentaries/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/TV\ Shows/Documentaries

# Mix
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/mix root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Music/Mixuri

# MTv
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/MTv root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Music

# Albums
sudo rsync -rv --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/Albums/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Music/Plex\ Library

