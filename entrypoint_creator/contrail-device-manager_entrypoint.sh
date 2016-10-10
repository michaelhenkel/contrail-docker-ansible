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

if [ _n "$contrail_device_manager__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_device_manager.conf DEFAULTS log_file $contrail_device_manager__DEFAULTS__log_file
fi
if [ _n "$contrail_device_manager__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_device_manager.conf DEFAULTS log_local $contrail_device_manager__DEFAULTS__log_local
fi
if [ _n "$contrail_device_manager__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_device_manager.conf DEFAULTS log_level $contrail_device_manager__DEFAULTS__log_level
fi
if [ _n "$contrail_device_manager__DEFAULTS__disc_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_device_manager.conf DEFAULTS disc_server_ip $contrail_device_manager__DEFAULTS__disc_server_ip
fi
if [ _n "$contrail_device_manager__DEFAULTS__disc_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_device_manager.conf DEFAULTS disc_server_port $contrail_device_manager__DEFAULTS__disc_server_port
fi
