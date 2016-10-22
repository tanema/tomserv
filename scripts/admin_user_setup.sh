#!/bin/bash
#create user
sudo adduser $1 --gecos "$1,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "$1:$2" | sudo chpasswd
#make sure user can change out of thier own root dir
echo "$1" | sudo tee -a /etc/vsftpd.chroot_list
#restart vsftpd to take the new conf
service vsftpd restart
