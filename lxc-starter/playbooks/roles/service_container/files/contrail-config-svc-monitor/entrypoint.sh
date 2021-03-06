
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

if [ -n "$contrail-svc-monitor__SECURITY__use_certs" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SECURITY use_certs $contrail-svc-monitor__SECURITY__use_certs
fi
if [ -n "$contrail-svc-monitor__SECURITY__keyfile" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SECURITY keyfile $contrail-svc-monitor__SECURITY__keyfile
fi
if [ -n "$contrail-svc-monitor__SECURITY__certfile" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SECURITY certfile $contrail-svc-monitor__SECURITY__certfile
fi
if [ -n "$contrail-svc-monitor__SECURITY__ca_certs" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SECURITY ca_certs $contrail-svc-monitor__SECURITY__ca_certs
fi
if [ -n "$contrail-svc-monitor__KEYSTONE__auth_host" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf KEYSTONE auth_host $contrail-svc-monitor__KEYSTONE__auth_host
fi
if [ -n "$contrail-svc-monitor__KEYSTONE__admin_user" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf KEYSTONE admin_user $contrail-svc-monitor__KEYSTONE__admin_user
fi
if [ -n "$contrail-svc-monitor__KEYSTONE__admin_password" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf KEYSTONE admin_password $contrail-svc-monitor__KEYSTONE__admin_password
fi
if [ -n "$contrail-svc-monitor__KEYSTONE__admin_tenant_name" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf KEYSTONE admin_tenant_name $contrail-svc-monitor__KEYSTONE__admin_tenant_name
fi
if [ -n "$contrail-svc-monitor__KEYSTONE__admin_token" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf KEYSTONE admin_token $contrail-svc-monitor__KEYSTONE__admin_token
fi
if [ -n "$contrail-svc-monitor__SCHEDULER__analytics_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SCHEDULER analytics_server_ip $contrail-svc-monitor__SCHEDULER__analytics_server_ip
fi
if [ -n "$contrail-svc-monitor__SCHEDULER__analytics_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SCHEDULER analytics_server_port $contrail-svc-monitor__SCHEDULER__analytics_server_port
fi
if [ -n "$contrail-svc-monitor__SCHEDULER__si_netns_scheduler_driver" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf SCHEDULER si_netns_scheduler_driver $contrail-svc-monitor__SCHEDULER__si_netns_scheduler_driver
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__ifmap_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS ifmap_server_ip $contrail-svc-monitor__DEFAULTS__ifmap_server_ip
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__ifmap_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS ifmap_server_port $contrail-svc-monitor__DEFAULTS__ifmap_server_port
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__ifmap_username" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS ifmap_username $contrail-svc-monitor__DEFAULTS__ifmap_username
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__ifmap_password" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS ifmap_password $contrail-svc-monitor__DEFAULTS__ifmap_password
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__api_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS api_server_ip $contrail-svc-monitor__DEFAULTS__api_server_ip
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__api_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS api_server_port $contrail-svc-monitor__DEFAULTS__api_server_port
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__zk_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS zk_server_ip $contrail-svc-monitor__DEFAULTS__zk_server_ip
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS log_file $contrail-svc-monitor__DEFAULTS__log_file
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS log_local $contrail-svc-monitor__DEFAULTS__log_local
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS log_level $contrail-svc-monitor__DEFAULTS__log_level
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS disc_server_ip $contrail-svc-monitor__DEFAULTS__disc_server_ip
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS disc_server_port $contrail-svc-monitor__DEFAULTS__disc_server_port
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__region_name" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS region_name $contrail-svc-monitor__DEFAULTS__region_name
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__cassandra_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS cassandra_server_list $contrail-svc-monitor__DEFAULTS__cassandra_server_list
fi
if [ -n "$contrail-svc-monitor__DEFAULTS__nova_endpoint_type" ]; then
  ./openstack-config --set /etc/contrail/contrail-svc-monitor.conf DEFAULTS nova_endpoint_type $contrail-svc-monitor__DEFAULTS__nova_endpoint_type
fi
