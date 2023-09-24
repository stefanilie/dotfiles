# 1. create ssh key
ssh-keygen

# 2. copy it to the destination
ssh-copy-id -i /path/to/specific/id_rsa.pub username@ip.ip.ip.ip

# 3. start doing the scripts 

# CameraRoll
sudo rsync -av --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /home/stefanilie/Syncthing/CameraRoll2/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Family/Pictures/Pixel\ 5/Camera

# Movies
sudo rsync -av --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/1TB/shares/Movies/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Movies

# MildlyImportantVideos
sudo rsync -av --progress --info=progress2 -e "ssh -i /home/stefanilie/.ssh/nas" --ignore-existing /media/500GB/shares/Mildly\ Important\ Videos/ root@192.168.1.169:/srv/dev-sataa24/root/WDMyCloudHome/Entertainment/Meme/MildlyImportantVideos

