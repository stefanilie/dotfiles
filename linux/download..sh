#! /bin/bash


echo "cd into 500GB folder"
cd /media/500GB/shares 

echo "==============================Downloading playlist - MTv=============================="
cd MTv
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFr1A140rM2b3QXBm3nCY7E1 --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - Mix=============================="
cd mix
sudo yt-dlp https://www.youtube.com/playlist\?list\=PLbXM76fJalFpn85onaelHZbvTE8lrMd0H --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail --audio-quality 0
cd ..

#echo "Downloading playlist - music"
#cd music_2022
#sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFouUno_RSeNXbL1FJwCLttI --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail --audio-quality 0 -I 460::1 
#cd ..

echo "==============================Downloading playlist - music 2023=============================="
cd music_2023
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFouUno_RSeNXbL1FJwCLttI --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail --audio-quality 0 -I 509::1
cd ..

echo "==============================Downloading playlist - Mildly Importand Videos=============================="
cd Mildly\ Important\ Videos 
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFq2XR8cGlWSV3fxWkwYPHQ4 --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - MyNeleTV=============================="
cd MyNeleTV
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFrVVUXdxjwzihBwAih5bAqC --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - reclame=============================="
cd reclame
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFoiEDWN9n_oBHcu_i3stXXx  --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - Documentaries=============================="
cd documentaries 
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFoz2wwjFgCV2-DX01WAWI9B --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - WatchList=============================="
cd watchList
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFqJzOtaWvbq3RaNhHgpAwgh --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist - Catalina=============================="
cd catalina
sudo yt-dlp https://www.youtube.com/playlist?list=PL1hz3SZOPfISybnwCfFqCy4nRUtN62Xgf --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail --audio-quality 0
cd ..

echo "==============================Downloading playlist - Catalina2=============================="
cd catalina2
sudo yt-dlp https://www.youtube.com/playlist?list=PL1hz3SZOPfISgRBWVe74KP0OgqxGCY2m5 --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail --audio-quality 0
cd ..

echo "==============================Downloading playlist - Vadim=============================="
cd vadim
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFqvljZeeNqfkOSJtqU0BXxj --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "==============================Downloading playlist -  QuintesentiallyRomanianMemes=============================="
cd QuintesentiallyRomanianMemes
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFqO9FJ1TVdiZJLyMVqefyuD --download-archive archive.txt -f mp4 --embed-thumbnail
cd