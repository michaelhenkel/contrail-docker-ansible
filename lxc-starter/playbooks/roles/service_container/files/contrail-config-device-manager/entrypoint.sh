
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

if [ -n "$contrail-device-manager__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-device-manager.conf DEFAULTS log_file $contrail-device-manager__DEFAULTS__log_file
fi
if [ -n "$contrail-device-manager__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-device-manager.conf DEFAULTS log_local $contrail-device-manager__DEFAULTS__log_local
fi
if [ -n "$contrail-device-manager__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-device-manager.conf DEFAULTS log_level $contrail-device-manager__DEFAULTS__log_level
fi
if [ -n "$contrail-device-manager__DEFAULTS__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-device-manager.conf DEFAULTS disc_server_ip $contrail-device-manager__DEFAULTS__disc_server_ip
fi
if [ -n "$contrail-device-manager__DEFAULTS__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-device-manager.conf DEFAULTS disc_server_port $contrail-device-manager__DEFAULTS__disc_server_port
fi
