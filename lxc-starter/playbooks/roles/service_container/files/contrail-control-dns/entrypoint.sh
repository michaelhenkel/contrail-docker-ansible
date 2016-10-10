
touch /etc/contrail/contrail-keystone-auth.conf
if [ -n "$KEYSTONE_SERVER" ]; then
  ./openstack-config --set /etc/contrail/vnc_api_lib.ini auth AUTHN_SERVER $KEYSTONE_SERVER
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_host $KEYSTONE_SERVER
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_protocol $AUTH_PROTOCOL
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_port $AUTH_PORT
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_user $ADMIN_USER
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_password $ADMIN_PASSWORD
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_token $ADMIN_TOKEN
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_tenant_name $ADMIN_TENANT
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE insecure $INSECURE
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE memcache_servers $MEMCACHED_SERVER:11211
fi

if [ -n "$contrail-dns__DEFAULT__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT collectors $contrail-dns__DEFAULT__collectors
fi
if [ -n "$contrail-dns__DEFAULT__dns_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT dns_config_file $contrail-dns__DEFAULT__dns_config_file
fi
if [ -n "$contrail-dns__DEFAULT__named_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_config_file $contrail-dns__DEFAULT__named_config_file
fi
if [ -n "$contrail-dns__DEFAULT__named_config_directory" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_config_directory $contrail-dns__DEFAULT__named_config_directory
fi
if [ -n "$contrail-dns__DEFAULT__named_log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_log_file $contrail-dns__DEFAULT__named_log_file
fi
if [ -n "$contrail-dns__DEFAULT__rndc_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT rndc_config_file $contrail-dns__DEFAULT__rndc_config_file
fi
if [ -n "$contrail-dns__DEFAULT__rndc_secret=secret=" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT rndc_secret=secret= $contrail-dns__DEFAULT__rndc_secret=secret=
fi
if [ -n "$contrail-dns__DEFAULT__named_max_cache_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_max_cache_size $contrail-dns__DEFAULT__named_max_cache_size
fi
if [ -n "$contrail-dns__DEFAULT__named_max_retransmissions" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_max_retransmissions $contrail-dns__DEFAULT__named_max_retransmissions
fi
if [ -n "$contrail-dns__DEFAULT__named_retransmission_interval" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_retransmission_interval $contrail-dns__DEFAULT__named_retransmission_interval
fi
if [ -n "$contrail-dns__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT hostip $contrail-dns__DEFAULT__hostip
fi
if [ -n "$contrail-dns__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT hostname $contrail-dns__DEFAULT__hostname
fi
if [ -n "$contrail-dns__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT http_server_port $contrail-dns__DEFAULT__http_server_port
fi
if [ -n "$contrail-dns__DEFAULT__dns_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT dns_server_port $contrail-dns__DEFAULT__dns_server_port
fi
if [ -n "$contrail-dns__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_category $contrail-dns__DEFAULT__log_category
fi
if [ -n "$contrail-dns__DEFAULT__log_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_disable $contrail-dns__DEFAULT__log_disable
fi
if [ -n "$contrail-dns__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_file $contrail-dns__DEFAULT__log_file
fi
if [ -n "$contrail-dns__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_files_count $contrail-dns__DEFAULT__log_files_count
fi
if [ -n "$contrail-dns__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_file_size $contrail-dns__DEFAULT__log_file_size
fi
if [ -n "$contrail-dns__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_level $contrail-dns__DEFAULT__log_level
fi
if [ -n "$contrail-dns__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_local $contrail-dns__DEFAULT__log_local
fi
if [ -n "$contrail-dns__DEFAULT__test_mode" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT test_mode $contrail-dns__DEFAULT__test_mode
fi
if [ -n "$contrail-dns__DEFAULT__log_property_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_property_file $contrail-dns__DEFAULT__log_property_file
fi
if [ -n "$contrail-dns__DEFAULT__xmpp_dns_auth_enable" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_dns_auth_enable $contrail-dns__DEFAULT__xmpp_dns_auth_enable
fi
if [ -n "$contrail-dns__DEFAULT__xmpp_server_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_server_cert $contrail-dns__DEFAULT__xmpp_server_cert
fi
if [ -n "$contrail-dns__DEFAULT__xmpp_server_key" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_server_key $contrail-dns__DEFAULT__xmpp_server_key
fi
if [ -n "$contrail-dns__DEFAULT__xmpp_ca_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_ca_cert $contrail-dns__DEFAULT__xmpp_ca_cert
fi
if [ -n "$contrail-dns__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT sandesh_send_rate_limit $contrail-dns__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail-dns__IFMAP__certs_store" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP certs_store $contrail-dns__IFMAP__certs_store
fi
if [ -n "$contrail-dns__IFMAP__password" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP password $contrail-dns__IFMAP__password
fi
if [ -n "$contrail-dns__IFMAP__server_url" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP server_url $contrail-dns__IFMAP__server_url
fi
if [ -n "$contrail-dns__IFMAP__user" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP user $contrail-dns__IFMAP__user
fi
if [ -n "$contrail-dns__IFMAP__stale_entries_cleanup_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP stale_entries_cleanup_timeout $contrail-dns__IFMAP__stale_entries_cleanup_timeout
fi
if [ -n "$contrail-dns__IFMAP__end_of_rib_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP end_of_rib_timeout $contrail-dns__IFMAP__end_of_rib_timeout
fi
if [ -n "$contrail-dns__IFMAP__peer_response_wait_time" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP peer_response_wait_time $contrail-dns__IFMAP__peer_response_wait_time
fi
if [ -n "$contrail-dns__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DISCOVERY port $contrail-dns__DISCOVERY__port
fi
if [ -n "$contrail-dns__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DISCOVERY server $contrail-dns__DISCOVERY__server
fi
