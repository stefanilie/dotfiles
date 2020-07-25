echo "\n- Hey there. Never mind me, just setting up your system.\n"

./defaults.sh

./npm.sh

./zsh.sh

figlet "And we're done" | lolcat -a -s 50 
