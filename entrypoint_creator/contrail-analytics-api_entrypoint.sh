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

if [ _n "$contrail_analytics_api__REDIS__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf REDIS server $contrail_analytics_api__REDIS__server
fi
if [ _n "$contrail_analytics_api__REDIS__redis_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf REDIS redis_server_port $contrail_analytics_api__REDIS__redis_server_port
fi
if [ _n "$contrail_analytics_api__REDIS__redis_query_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf REDIS redis_query_port $contrail_analytics_api__REDIS__redis_query_port
fi
if [ _n "$contrail_analytics_api__DEFAULTS__host_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS host_ip $contrail_analytics_api__DEFAULTS__host_ip
fi
if [ _n "$contrail_analytics_api__DEFAULTS__collectors" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS collectors $contrail_analytics_api__DEFAULTS__collectors
fi
if [ _n "$contrail_analytics_api__DEFAULTS__cassandra_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS cassandra_server_list $contrail_analytics_api__DEFAULTS__cassandra_server_list
fi
if [ _n "$contrail_analytics_api__DEFAULTS__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS http_server_port $contrail_analytics_api__DEFAULTS__http_server_port
fi
if [ _n "$contrail_analytics_api__DEFAULTS__rest_api_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS rest_api_port $contrail_analytics_api__DEFAULTS__rest_api_port
fi
if [ _n "$contrail_analytics_api__DEFAULTS__rest_api_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS rest_api_ip $contrail_analytics_api__DEFAULTS__rest_api_ip
fi
if [ _n "$contrail_analytics_api__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS log_local $contrail_analytics_api__DEFAULTS__log_local
fi
if [ _n "$contrail_analytics_api__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS log_level $contrail_analytics_api__DEFAULTS__log_level
fi
if [ _n "$contrail_analytics_api__DEFAULTS__log_category" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS log_category $contrail_analytics_api__DEFAULTS__log_category
fi
if [ _n "$contrail_analytics_api__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS log_file $contrail_analytics_api__DEFAULTS__log_file
fi
if [ _n "$contrail_analytics_api__DEFAULTS__sandesh_send_rate_limit" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS sandesh_send_rate_limit $contrail_analytics_api__DEFAULTS__sandesh_send_rate_limit
fi
if [ _n "$contrail_analytics_api__DEFAULTS__partitions" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DEFAULTS partitions $contrail_analytics_api__DEFAULTS__partitions
fi
if [ _n "$contrail_analytics_api__DISCOVERY__disc_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DISCOVERY disc_server_ip $contrail_analytics_api__DISCOVERY__disc_server_ip
fi
if [ _n "$contrail_analytics_api__DISCOVERY__disc_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_analytics_api.conf DISCOVERY disc_server_port $contrail_analytics_api__DISCOVERY__disc_server_port
fi
