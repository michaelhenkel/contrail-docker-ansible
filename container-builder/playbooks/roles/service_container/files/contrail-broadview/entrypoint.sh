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

if [ -n "$contrail_broadview__DEFAULTS__analytics_api" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS analytics_api $contrail_broadview__DEFAULTS__analytics_api
fi
if [ -n "$contrail_broadview__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS collectors $contrail_broadview__DEFAULTS__collectors
fi
if [ -n "$contrail_broadview__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS http_server_port $contrail_broadview__DEFAULTS__http_server_port
fi
if [ -n "$contrail_broadview__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_local $contrail_broadview__DEFAULTS__log_local
fi
if [ -n "$contrail_broadview__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_level $contrail_broadview__DEFAULTS__log_level
fi
if [ -n "$contrail_broadview__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_file $contrail_broadview__DEFAULTS__log_file
fi
if [ -n "$contrail_broadview__DEFAULTS__scan_frequency" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS scan_frequency $contrail_broadview__DEFAULTS__scan_frequency
fi
if [ -n "$contrail_broadview__DEFAULTS__zookeeper" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS zookeeper $contrail_broadview__DEFAULTS__zookeeper
fi
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

if [ -n "$contrail_broadview__DEFAULTS__analytics_api" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS analytics_api $contrail_broadview__DEFAULTS__analytics_api
fi
if [ -n "$contrail_broadview__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS collectors $contrail_broadview__DEFAULTS__collectors
fi
if [ -n "$contrail_broadview__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS http_server_port $contrail_broadview__DEFAULTS__http_server_port
fi
if [ -n "$contrail_broadview__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_local $contrail_broadview__DEFAULTS__log_local
fi
if [ -n "$contrail_broadview__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_level $contrail_broadview__DEFAULTS__log_level
fi
if [ -n "$contrail_broadview__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS log_file $contrail_broadview__DEFAULTS__log_file
fi
if [ -n "$contrail_broadview__DEFAULTS__scan_frequency" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS scan_frequency $contrail_broadview__DEFAULTS__scan_frequency
fi
if [ -n "$contrail_broadview__DEFAULTS__zookeeper" ]; then
  ./openstack-config --set /etc/contrail/contrail-broadview.conf DEFAULTS zookeeper $contrail_broadview__DEFAULTS__zookeeper
fi

exec "$@"