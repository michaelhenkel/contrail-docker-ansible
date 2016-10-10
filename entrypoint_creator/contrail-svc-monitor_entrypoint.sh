entrypoints/
touch /etc/contrail/contrail_keystone_auth.conf
if [ _n "$KEYSTONE_SERVER" ]; then
  ./openstack_config __set /etc/contrail/vnc_api_lib.ini auth AUTHN_SERVER $KEYSTONE_SERVER
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE auth_host $KEYSTONE_SERVER
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE auth_protocol $AUTH_PROTOCOL
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE auth_port $AUTH_PORT
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE admin_user $ADMIN_USER
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE admin_password $ADMIN_PASSWORD
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE admin_token $ADMIN_TOKEN
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE admin_tenant_name $ADMIN_TENANT
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE insecure $INSECURE
  ./openstack_config __set /etc/contrail/contrail_keystone_auth.conf KEYSTONE memcache_servers $MEMCACHED_SERVER:11211
fi

if [ _n "$contrail_svc_monitor__SECURITY__use_certs" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SECURITY use_certs $contrail_svc_monitor__SECURITY__use_certs
fi
if [ _n "$contrail_svc_monitor__SECURITY__keyfile" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SECURITY keyfile $contrail_svc_monitor__SECURITY__keyfile
fi
if [ _n "$contrail_svc_monitor__SECURITY__certfile" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SECURITY certfile $contrail_svc_monitor__SECURITY__certfile
fi
if [ _n "$contrail_svc_monitor__SECURITY__ca_certs" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SECURITY ca_certs $contrail_svc_monitor__SECURITY__ca_certs
fi
if [ _n "$contrail_svc_monitor__KEYSTONE__auth_host" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf KEYSTONE auth_host $contrail_svc_monitor__KEYSTONE__auth_host
fi
if [ _n "$contrail_svc_monitor__KEYSTONE__admin_user" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf KEYSTONE admin_user $contrail_svc_monitor__KEYSTONE__admin_user
fi
if [ _n "$contrail_svc_monitor__KEYSTONE__admin_password" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf KEYSTONE admin_password $contrail_svc_monitor__KEYSTONE__admin_password
fi
if [ _n "$contrail_svc_monitor__KEYSTONE__admin_tenant_name" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf KEYSTONE admin_tenant_name $contrail_svc_monitor__KEYSTONE__admin_tenant_name
fi
if [ _n "$contrail_svc_monitor__KEYSTONE__admin_token" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf KEYSTONE admin_token $contrail_svc_monitor__KEYSTONE__admin_token
fi
if [ _n "$contrail_svc_monitor__SCHEDULER__analytics_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SCHEDULER analytics_server_ip $contrail_svc_monitor__SCHEDULER__analytics_server_ip
fi
if [ _n "$contrail_svc_monitor__SCHEDULER__analytics_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SCHEDULER analytics_server_port $contrail_svc_monitor__SCHEDULER__analytics_server_port
fi
if [ _n "$contrail_svc_monitor__SCHEDULER__si_netns_scheduler_driver" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf SCHEDULER si_netns_scheduler_driver $contrail_svc_monitor__SCHEDULER__si_netns_scheduler_driver
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__ifmap_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS ifmap_server_ip $contrail_svc_monitor__DEFAULTS__ifmap_server_ip
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__ifmap_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS ifmap_server_port $contrail_svc_monitor__DEFAULTS__ifmap_server_port
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__ifmap_username" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS ifmap_username $contrail_svc_monitor__DEFAULTS__ifmap_username
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__ifmap_password" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS ifmap_password $contrail_svc_monitor__DEFAULTS__ifmap_password
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__api_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS api_server_ip $contrail_svc_monitor__DEFAULTS__api_server_ip
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__api_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS api_server_port $contrail_svc_monitor__DEFAULTS__api_server_port
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__zk_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS zk_server_ip $contrail_svc_monitor__DEFAULTS__zk_server_ip
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS log_file $contrail_svc_monitor__DEFAULTS__log_file
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS log_local $contrail_svc_monitor__DEFAULTS__log_local
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS log_level $contrail_svc_monitor__DEFAULTS__log_level
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__disc_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS disc_server_ip $contrail_svc_monitor__DEFAULTS__disc_server_ip
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__disc_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS disc_server_port $contrail_svc_monitor__DEFAULTS__disc_server_port
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__region_name" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS region_name $contrail_svc_monitor__DEFAULTS__region_name
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__cassandra_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS cassandra_server_list $contrail_svc_monitor__DEFAULTS__cassandra_server_list
fi
if [ _n "$contrail_svc_monitor__DEFAULTS__nova_endpoint_type" ]; then
  ./openstack_config __set /etc/contrail/contrail_svc_monitor.conf DEFAULTS nova_endpoint_type $contrail_svc_monitor__DEFAULTS__nova_endpoint_type
fi
