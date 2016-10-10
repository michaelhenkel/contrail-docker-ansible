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

if [ _n "$contrail_discovery__DNS_SERVER__policy" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DNS_SERVER policy $contrail_discovery__DNS_SERVER__policy
fi
if [ _n "$contrail_discovery__DEFAULTS__listen_ip_addr" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS listen_ip_addr $contrail_discovery__DEFAULTS__listen_ip_addr
fi
if [ _n "$contrail_discovery__DEFAULTS__listen_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS listen_port $contrail_discovery__DEFAULTS__listen_port
fi
if [ _n "$contrail_discovery__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS log_local $contrail_discovery__DEFAULTS__log_local
fi
if [ _n "$contrail_discovery__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS log_file $contrail_discovery__DEFAULTS__log_file
fi
if [ _n "$contrail_discovery__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS log_level $contrail_discovery__DEFAULTS__log_level
fi
if [ _n "$contrail_discovery__DEFAULTS__cassandra_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS cassandra_server_list $contrail_discovery__DEFAULTS__cassandra_server_list
fi
if [ _n "$contrail_discovery__DEFAULTS__cass_max_retries" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS cass_max_retries $contrail_discovery__DEFAULTS__cass_max_retries
fi
if [ _n "$contrail_discovery__DEFAULTS__cass_timeout" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS cass_timeout $contrail_discovery__DEFAULTS__cass_timeout
fi
if [ _n "$contrail_discovery__DEFAULTS__ttl_min" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS ttl_min $contrail_discovery__DEFAULTS__ttl_min
fi
if [ _n "$contrail_discovery__DEFAULTS__ttl_max" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS ttl_max $contrail_discovery__DEFAULTS__ttl_max
fi
if [ _n "$contrail_discovery__DEFAULTS__health check ping interval <" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS health check ping interval < $contrail_discovery__DEFAULTS__health check ping interval <
fi
if [ _n "$contrail_discovery__DEFAULTS__hc_interval" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS hc_interval $contrail_discovery__DEFAULTS__hc_interval
fi
if [ _n "$contrail_discovery__DEFAULTS__hc_max_miss" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS hc_max_miss $contrail_discovery__DEFAULTS__hc_max_miss
fi
if [ _n "$contrail_discovery__DEFAULTS__ttl_short" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS ttl_short $contrail_discovery__DEFAULTS__ttl_short
fi
if [ _n "$contrail_discovery__DEFAULTS__ttl_short" ]; then
  ./openstack_config __set /etc/contrail/contrail_discovery.conf DEFAULTS ttl_short $contrail_discovery__DEFAULTS__ttl_short
fi
