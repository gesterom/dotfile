#!/bin/zsh

export PATH=$PATH:~/.scripts/:/opt/cuda/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64

eval `ssh-agent`
echo "=> ssh-agent started"
sudo timedatectl set-ntp true --no-ask-password
echo "=> NTP seted"
ssh-add
echo "=> ssh added"
cat ~/.Welcome_screan
