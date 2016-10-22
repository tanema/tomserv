#!/bin/bash
sudo apt-get update
sudo apt-get install software-properties-common python-software-properties
#install vsftpd
sudo add-apt-repository ppa:thefrontiergroup/vsftpd
sudo apt-get update
sudo apt-get install vsftpd -y
#setup ssl
sudo mkdir /etc/ssl/private
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
#copy new config to vsftpd
sudo cp ~/vsftpd.conf /etc/vsftpd.conf
#restart vsftpd to take the new conf
service vsftpd restart
