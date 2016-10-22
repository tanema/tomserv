#!/bin/bash
# $1 username
# $2 password
#--gecos GECOS Set the gecos field for the new entry generated.
#--disabled-login Do not run passwd to set the password.
sudo adduser $1 --gecos "$1,RoomNumber,WorkPhone,HomePhone" --disabled-password
#set initial password
echo "$1:$2" | sudo chpasswd
#mount folder into toms folder
mkdir /home/tom/$1
sudo mount --bind /home/$1 /home/tom/$1
#make sure tome has access to everything only tom because only he can chroot
sudo chmod -R 777 /home/*

