default['vsftpd']['config'] = {
  'listen'                      => 'YES',
  'ftpd_banner'                 => 'Welcome to the GigaDB FTP service',
  'anonymous_enable'            => 'YES',
  'anon_world_readable_only'    => 'YES',
  'userlist_deny'               => 'YES',
  'userlist_file'               => node['vsftpd']['etcdir'] + '/vsftpd.user_list',
  'local_enable'                => 'YES',
  'pam_service_name'            => 'vsftpd',
  'anon_mkdir_write_enable'     => 'NO',
  'anon_root'                   => '/var/ftp',
  'no_anon_password'            => 'YES',
  'local_root'                  => '/var/ftp/pub',
  'chroot_local_user'           => 'YES',
  'chroot_list_enable'          => 'NO',
  'write_enable'                => 'YES',
  'local_umask'                 => '077',
  'dirmessage_enable'           => 'YES',
  'user_config_dir'             => node['vsftpd']['etcdir'] + '/users.d',
  'max_per_ip'                  => '2',
  'max_clients'                 => '15',
  'anon_max_rate'               => '128000',
  'connect_from_port_20'        => 'YES',
  'pasv_enable'                 => 'YES',
  'xferlog_enable'              => 'YES',
  'xferlog_std_format'          => 'YES',
  'xferlog_file'                => '/var/log/xferlog',
  'dual_log_enable'             => 'YES',
  'vsftpd_log_file'             => '/var/log/vsftpd.log',
  'banned_email_file'           => node['vsftpd']['etcdir'] + '/banned_emails',
  'chroot_list_file'            => node['vsftpd']['etcdir'] + '/vsftpd.chroot_list',
  'ssl_enable'                  => node['vsftpd']['ssl']['enabled'] ? 'YES' : 'NO',
  'allow_anon_ssl'              => node['vsftpd']['ssl']['allow_anon'] ? 'YES' : 'NO',
  'force_local_data_ssl'        => node['vsftpd']['ssl']['force_local_data'] ? 'YES' : 'NO',
  'force_local_logins_ssl'      => node['vsftpd']['ssl']['force_local_logins'] ? 'YES' : 'NO',
  'ssl_tlsv1'                   => node['vsftpd']['ssl']['tslv1_enabled'] ? 'YES' : 'NO',
  'ssl_sslv2'                   => node['vsftpd']['ssl']['sslv2_enabled'] ? 'YES' : 'NO',
  'ssl_sslv3'                   => node['vsftpd']['ssl']['sslv3_enabled'] ? 'YES' : 'NO',
  'rsa_cert_file'               => node['vsftpd']['ssl']['cert']['public_cert_file'],
  'rsa_private_key_file'        => node['vsftpd']['ssl']['key']['private_key_file']
}
