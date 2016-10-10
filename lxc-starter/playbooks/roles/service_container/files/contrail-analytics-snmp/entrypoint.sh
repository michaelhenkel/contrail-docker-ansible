
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

if [ -n "$contrail-snmp-collector__KEYSTONE__auth_host" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE auth_host $contrail-snmp-collector__KEYSTONE__auth_host
fi
if [ -n "$contrail-snmp-collector__KEYSTONE__auth_protocol" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE auth_protocol $contrail-snmp-collector__KEYSTONE__auth_protocol
fi
if [ -n "$contrail-snmp-collector__KEYSTONE__auth_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE auth_port $contrail-snmp-collector__KEYSTONE__auth_port
fi
if [ -n "$contrail-snmp-collector__KEYSTONE__admin_user" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE admin_user $contrail-snmp-collector__KEYSTONE__admin_user
fi
if [ -n "$contrail-snmp-collector__KEYSTONE__admin_password" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE admin_password $contrail-snmp-collector__KEYSTONE__admin_password
fi
if [ -n "$contrail-snmp-collector__KEYSTONE__admin_tenant_name" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf KEYSTONE admin_tenant_name $contrail-snmp-collector__KEYSTONE__admin_tenant_name
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__api_server" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS api_server $contrail-snmp-collector__DEFAULTS__api_server
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS collectors $contrail-snmp-collector__DEFAULTS__collectors
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__fast_scan_frequency" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS fast_scan_frequency $contrail-snmp-collector__DEFAULTS__fast_scan_frequency
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS http_server_port $contrail-snmp-collector__DEFAULTS__http_server_port
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS log_local $contrail-snmp-collector__DEFAULTS__log_local
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS log_level $contrail-snmp-collector__DEFAULTS__log_level
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS log_file $contrail-snmp-collector__DEFAULTS__log_file
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__scan_frequency" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS scan_frequency $contrail-snmp-collector__DEFAULTS__scan_frequency
fi
if [ -n "$contrail-snmp-collector__DEFAULTS__zookeeper" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DEFAULTS zookeeper $contrail-snmp-collector__DEFAULTS__zookeeper
fi
if [ -n "$contrail-snmp-collector__DISCOVERY__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DISCOVERY disc_server_ip $contrail-snmp-collector__DISCOVERY__disc_server_ip
fi
if [ -n "$contrail-snmp-collector__DISCOVERY__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-snmp-collector.conf DISCOVERY disc_server_port $contrail-snmp-collector__DISCOVERY__disc_server_port
fi
