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

if [ _n "$contrail_broadview__DEFAULTS__analytics_api" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS analytics_api $contrail_broadview__DEFAULTS__analytics_api
fi
if [ _n "$contrail_broadview__DEFAULTS__collectors" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS collectors $contrail_broadview__DEFAULTS__collectors
fi
if [ _n "$contrail_broadview__DEFAULTS__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS http_server_port $contrail_broadview__DEFAULTS__http_server_port
fi
if [ _n "$contrail_broadview__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS log_local $contrail_broadview__DEFAULTS__log_local
fi
if [ _n "$contrail_broadview__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS log_level $contrail_broadview__DEFAULTS__log_level
fi
if [ _n "$contrail_broadview__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS log_file $contrail_broadview__DEFAULTS__log_file
fi
if [ _n "$contrail_broadview__DEFAULTS__scan_frequency" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS scan_frequency $contrail_broadview__DEFAULTS__scan_frequency
fi
if [ _n "$contrail_broadview__DEFAULTS__zookeeper" ]; then
  ./openstack_config __set /etc/contrail/contrail_broadview.conf DEFAULTS zookeeper $contrail_broadview__DEFAULTS__zookeeper
fi
