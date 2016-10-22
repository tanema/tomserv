all:
	@scp ./config/vsftpd.conf $(host):vsftpd.conf
	@ssh root@$(host) 'bash -s' < ./scripts/server_setup.sh
	@ssh root@$(host) 'bash -s' < ./scripts/admin_user_setup.sh $(user) $(pw)
add:
	@ssh root@$(host) 'bash -s' < ./scripts/server_setup.sh $(root) $(user) $(pw)
