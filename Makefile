all:
	scp ./config/vsftpd.conf $1:vsftpd.conf
	ssh root@$1 'bash -s' < ./scripts/server_setup.sh
	ssh root@$1 'bash -s' < ./scripts/admin_user_setup.sh $2 $3
add:
	ssh root@$1 'bash -s' < ./scripts/server_setup.sh $2 $3


