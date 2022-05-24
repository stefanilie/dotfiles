#! /bin/bash


echo "cd into 250GB folder"
cd /media/250GB/shares 

echo "Downloading playlist - MTv"
cd MTv
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFr1A140rM2b3QXBm3nCY7E1 --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "Downloading playlist - Mix"
cd mix
sudo yt-dlp https://www.youtube.com/playlist\?list\=PLbXM76fJalFpn85onaelHZbvTE8lrMd0H --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail
cd ..

echo "Downloading playlist - music"
cd music
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFouUno_RSeNXbL1FJwCLttI --download-archive archive.txt -x --audio-format mp3 --embed-thumbnail 
cd ..

echo "Downloading playlist - Mildly Importand Videos"
cd Mildly\ Important\ Videos 
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFq2XR8cGlWSV3fxWkwYPHQ4 --download-archive archive.txt -f mp4 --embed-thumbnail 
cd ..

echo "Downloading playlist - MyNeleTV"
cd MyNeleTV
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFrVVUXdxjwzihBwAih5bAqC --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "Downloading playlist - reclame"
cd reclame
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFoiEDWN9n_oBHcu_i3stXXx  --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "Downloading playlist - Documentaries"
cd documentaries 
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFoz2wwjFgCV2-DX01WAWI9B --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..

echo "Downloading playlist - WatchList"
cd watchList
sudo yt-dlp https://www.youtube.com/playlist?list=PLbXM76fJalFqJzOtaWvbq3RaNhHgpAwgh --download-archive archive.txt -f mp4 --embed-thumbnail
cd ..
