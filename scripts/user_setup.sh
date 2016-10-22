#!/bin/bash
# $1 root user
# $2 username
# $3 password
#--gecos GECOS Set the gecos field for the new entry generated.
#--disabled-login Do not run passwd to set the password.
sudo adduser $2 --gecos "$2,RoomNumber,WorkPhone,HomePhone" --disabled-password
#set initial password
echo "$2:$3" | sudo chpasswd
#mount folder into toms folder
mkdir /home/$1/$2
sudo mount --bind /home/$2 /home/$1/$2
#make sure tome has access to everything only tom because only he can chroot
sudo chmod -R 777 /home/*

