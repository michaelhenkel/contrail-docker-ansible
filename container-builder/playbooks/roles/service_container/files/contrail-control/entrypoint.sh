#!/bin/bash
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

if [ -n "$contrail_control__DEFAULT__bgp_config_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT bgp_config_file $contrail_control__DEFAULT__bgp_config_file
fi
if [ -n "$contrail_control__DEFAULT__bgp_end_of_rib_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT bgp_end_of_rib_timeout $contrail_control__DEFAULT__bgp_end_of_rib_timeout
fi
if [ -n "$contrail_control__DEFAULT__bgp_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT bgp_port $contrail_control__DEFAULT__bgp_port
fi
if [ -n "$contrail_control__DEFAULT__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT collectors $contrail_control__DEFAULT__collectors
fi
if [ -n "$contrail_control__DEFAULT__gr_helper_bgp_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT gr_helper_bgp_disable $contrail_control__DEFAULT__gr_helper_bgp_disable
fi
if [ -n "$contrail_control__DEFAULT__gr_helper_xmpp_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT gr_helper_xmpp_disable $contrail_control__DEFAULT__gr_helper_xmpp_disable
fi
if [ -n "$contrail_control__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT hostip $contrail_control__DEFAULT__hostip
fi
if [ -n "$contrail_control__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT hostname $contrail_control__DEFAULT__hostname
fi
if [ -n "$contrail_control__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT http_server_port $contrail_control__DEFAULT__http_server_port
fi
if [ -n "$contrail_control__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_category $contrail_control__DEFAULT__log_category
fi
if [ -n "$contrail_control__DEFAULT__log_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_disable $contrail_control__DEFAULT__log_disable
fi
if [ -n "$contrail_control__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_file $contrail_control__DEFAULT__log_file
fi
if [ -n "$contrail_control__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_files_count $contrail_control__DEFAULT__log_files_count
fi
if [ -n "$contrail_control__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_file_size $contrail_control__DEFAULT__log_file_size
fi
if [ -n "$contrail_control__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_level $contrail_control__DEFAULT__log_level
fi
if [ -n "$contrail_control__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT log_local $contrail_control__DEFAULT__log_local
fi
if [ -n "$contrail_control__DEFAULT__test_mode" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT test_mode $contrail_control__DEFAULT__test_mode
fi
if [ -n "$contrail_control__DEFAULT__xmpp_auth_enable" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_auth_enable $contrail_control__DEFAULT__xmpp_auth_enable
fi
if [ -n "$contrail_control__DEFAULT__xmpp_server_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_server_cert $contrail_control__DEFAULT__xmpp_server_cert
fi
if [ -n "$contrail_control__DEFAULT__xmpp_server_key" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_server_key $contrail_control__DEFAULT__xmpp_server_key
fi
if [ -n "$contrail_control__DEFAULT__xmpp_ca_cert" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_ca_cert $contrail_control__DEFAULT__xmpp_ca_cert
fi
if [ -n "$contrail_control__DEFAULT__xmpp_end_of_rib_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_end_of_rib_timeout $contrail_control__DEFAULT__xmpp_end_of_rib_timeout
fi
if [ -n "$contrail_control__DEFAULT__xmpp_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT xmpp_server_port $contrail_control__DEFAULT__xmpp_server_port
fi
if [ -n "$contrail_control__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DEFAULT sandesh_send_rate_limit $contrail_control__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail_control__IFMAP__certs_store" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP certs_store $contrail_control__IFMAP__certs_store
fi
if [ -n "$contrail_control__IFMAP__password" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP password $contrail_control__IFMAP__password
fi
if [ -n "$contrail_control__IFMAP__server_url" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP server_url $contrail_control__IFMAP__server_url
fi
if [ -n "$contrail_control__IFMAP__user" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP user $contrail_control__IFMAP__user
fi
if [ -n "$contrail_control__IFMAP__stale_entries_cleanup_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP stale_entries_cleanup_timeout $contrail_control__IFMAP__stale_entries_cleanup_timeout
fi
if [ -n "$contrail_control__IFMAP__end_of_rib_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP end_of_rib_timeout $contrail_control__IFMAP__end_of_rib_timeout
fi
if [ -n "$contrail_control__IFMAP__peer_response_wait_time" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf IFMAP peer_response_wait_time $contrail_control__IFMAP__peer_response_wait_time
fi
if [ -n "$contrail_control__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DISCOVERY port $contrail_control__DISCOVERY__port
fi
if [ -n "$contrail_control__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-control.conf DISCOVERY server $contrail_control__DISCOVERY__server
fi

echo "/usr/sbin/contrail-provision-control --host_name `hostname` --host_ip $myip --api_server_ip $contrail__controller_vip --api_server_port 8082 --router_asn $ASN --oper add" > /register_control.sh
chmod +x /register_control.sh

exec "$@"
