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

if [ _n "$contrail_snmp_collector__KEYSTONE__auth_host" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE auth_host $contrail_snmp_collector__KEYSTONE__auth_host
fi
if [ _n "$contrail_snmp_collector__KEYSTONE__auth_protocol" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE auth_protocol $contrail_snmp_collector__KEYSTONE__auth_protocol
fi
if [ _n "$contrail_snmp_collector__KEYSTONE__auth_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE auth_port $contrail_snmp_collector__KEYSTONE__auth_port
fi
if [ _n "$contrail_snmp_collector__KEYSTONE__admin_user" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE admin_user $contrail_snmp_collector__KEYSTONE__admin_user
fi
if [ _n "$contrail_snmp_collector__KEYSTONE__admin_password" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE admin_password $contrail_snmp_collector__KEYSTONE__admin_password
fi
if [ _n "$contrail_snmp_collector__KEYSTONE__admin_tenant_name" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf KEYSTONE admin_tenant_name $contrail_snmp_collector__KEYSTONE__admin_tenant_name
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__api_server" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS api_server $contrail_snmp_collector__DEFAULTS__api_server
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__collectors" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS collectors $contrail_snmp_collector__DEFAULTS__collectors
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__fast_scan_frequency" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS fast_scan_frequency $contrail_snmp_collector__DEFAULTS__fast_scan_frequency
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS http_server_port $contrail_snmp_collector__DEFAULTS__http_server_port
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS log_local $contrail_snmp_collector__DEFAULTS__log_local
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS log_level $contrail_snmp_collector__DEFAULTS__log_level
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS log_file $contrail_snmp_collector__DEFAULTS__log_file
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__scan_frequency" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS scan_frequency $contrail_snmp_collector__DEFAULTS__scan_frequency
fi
if [ _n "$contrail_snmp_collector__DEFAULTS__zookeeper" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DEFAULTS zookeeper $contrail_snmp_collector__DEFAULTS__zookeeper
fi
if [ _n "$contrail_snmp_collector__DISCOVERY__disc_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DISCOVERY disc_server_ip $contrail_snmp_collector__DISCOVERY__disc_server_ip
fi
if [ _n "$contrail_snmp_collector__DISCOVERY__disc_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_snmp_collector.conf DISCOVERY disc_server_port $contrail_snmp_collector__DISCOVERY__disc_server_port
fi
