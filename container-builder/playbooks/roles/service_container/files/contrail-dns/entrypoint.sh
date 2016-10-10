#!/bin/bash
touch /etc/contrail/contrail-dns.conf
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
echo "[DEFAULT]" > /etc/contrail/contrail-dns.conf
echo "[DISCOVERY]" >> /etc/contrail/contrail-dns.conf
echo "[IFMAP]" >> /etc/contrail/contrail-dns.conf

if [ -n "$contrail_dns__DEFAULT__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT collectors $contrail_dns__DEFAULT__collectors
fi
if [ -n "$contrail_dns__DEFAULT__dns_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT dns_config_file $contrail_dns__DEFAULT__dns_config_file
fi
if [ -n "$contrail_dns__DEFAULT__named_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_config_file $contrail_dns__DEFAULT__named_config_file
fi
if [ -n "$contrail_dns__DEFAULT__named_config_directory" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_config_directory $contrail_dns__DEFAULT__named_config_directory
fi
if [ -n "$contrail_dns__DEFAULT__named_log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_log_file $contrail_dns__DEFAULT__named_log_file
fi
if [ -n "$contrail_dns__DEFAULT__rndc_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT rndc_config_file $contrail_dns__DEFAULT__rndc_config_file
fi
if [ -n "$contrail_dns__DEFAULT__rndc_secret" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT rndc_secret $contrail_dns__DEFAULT__rndc_secret
fi
if [ -n "$contrail_dns__DEFAULT__named_max_cache_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_max_cache_size $contrail_dns__DEFAULT__named_max_cache_size
fi
if [ -n "$contrail_dns__DEFAULT__named_max_retransmissions" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_max_retransmissions $contrail_dns__DEFAULT__named_max_retransmissions
fi
if [ -n "$contrail_dns__DEFAULT__named_retransmission_interval" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT named_retransmission_interval $contrail_dns__DEFAULT__named_retransmission_interval
fi
if [ -n "$contrail_dns__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT hostip $contrail_dns__DEFAULT__hostip
fi
if [ -n "$contrail_dns__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT hostname $contrail_dns__DEFAULT__hostname
fi
if [ -n "$contrail_dns__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT http_server_port $contrail_dns__DEFAULT__http_server_port
fi
if [ -n "$contrail_dns__DEFAULT__dns_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT dns_server_port $contrail_dns__DEFAULT__dns_server_port
fi
if [ -n "$contrail_dns__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_category $contrail_dns__DEFAULT__log_category
fi
if [ -n "$contrail_dns__DEFAULT__log_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_disable $contrail_dns__DEFAULT__log_disable
fi
if [ -n "$contrail_dns__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_file $contrail_dns__DEFAULT__log_file
fi
if [ -n "$contrail_dns__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_files_count $contrail_dns__DEFAULT__log_files_count
fi
if [ -n "$contrail_dns__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_file_size $contrail_dns__DEFAULT__log_file_size
fi
if [ -n "$contrail_dns__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_level $contrail_dns__DEFAULT__log_level
fi
if [ -n "$contrail_dns__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_local $contrail_dns__DEFAULT__log_local
fi
if [ -n "$contrail_dns__DEFAULT__test_mode" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT test_mode $contrail_dns__DEFAULT__test_mode
fi
if [ -n "$contrail_dns__DEFAULT__log_property_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT log_property_file $contrail_dns__DEFAULT__log_property_file
fi
if [ -n "$contrail_dns__DEFAULT__xmpp_dns_auth_enable" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_dns_auth_enable $contrail_dns__DEFAULT__xmpp_dns_auth_enable
fi
if [ -n "$contrail_dns__DEFAULT__xmpp_server_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_server_cert $contrail_dns__DEFAULT__xmpp_server_cert
fi
if [ -n "$contrail_dns__DEFAULT__xmpp_server_key" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_server_key $contrail_dns__DEFAULT__xmpp_server_key
fi
if [ -n "$contrail_dns__DEFAULT__xmpp_ca_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT xmpp_ca_cert $contrail_dns__DEFAULT__xmpp_ca_cert
fi
if [ -n "$contrail_dns__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DEFAULT sandesh_send_rate_limit $contrail_dns__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail_dns__IFMAP__certs_store" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP certs_store $contrail_dns__IFMAP__certs_store
fi
if [ -n "$contrail_dns__IFMAP__password" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP password $contrail_dns__IFMAP__password
fi
if [ -n "$contrail_dns__IFMAP__server_url" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP server_url $contrail_dns__IFMAP__server_url
fi
if [ -n "$contrail_dns__IFMAP__user" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP user $contrail_dns__IFMAP__user
fi
if [ -n "$contrail_dns__IFMAP__stale_entries_cleanup_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP stale_entries_cleanup_timeout $contrail_dns__IFMAP__stale_entries_cleanup_timeout
fi
if [ -n "$contrail_dns__IFMAP__end_of_rib_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP end_of_rib_timeout $contrail_dns__IFMAP__end_of_rib_timeout
fi
if [ -n "$contrail_dns__IFMAP__peer_response_wait_time" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf IFMAP peer_response_wait_time $contrail_dns__IFMAP__peer_response_wait_time
fi
if [ -n "$contrail_dns__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DISCOVERY port $contrail_dns__DISCOVERY__port
fi
if [ -n "$contrail_dns__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-dns.conf DISCOVERY server $contrail_dns__DISCOVERY__server
fi

#if [ -n "$contrail_dns__rndc_secret" ]; then
#  sed -i "s/secret123.*/    secret \"$contrail_dns__rndc_secret\";/g" /etc/contrail/dns/contrail-rndc.conf
#fi
if [ -n "$contrail_named__listen_address" ]; then
  sed -i "s/default-server 127.0.0.1;/default-server $contrail_named__listen_address;/g" /etc/contrail/dns/contrail-rndc.conf
fi

exec "$@"
