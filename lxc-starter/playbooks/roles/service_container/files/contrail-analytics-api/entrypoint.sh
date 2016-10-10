
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

if [ -n "$contrail-analytics-api__REDIS__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf REDIS server $contrail-analytics-api__REDIS__server
fi
if [ -n "$contrail-analytics-api__REDIS__redis_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf REDIS redis_server_port $contrail-analytics-api__REDIS__redis_server_port
fi
if [ -n "$contrail-analytics-api__REDIS__redis_query_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf REDIS redis_query_port $contrail-analytics-api__REDIS__redis_query_port
fi
if [ -n "$contrail-analytics-api__DEFAULTS__host_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS host_ip $contrail-analytics-api__DEFAULTS__host_ip
fi
if [ -n "$contrail-analytics-api__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS collectors $contrail-analytics-api__DEFAULTS__collectors
fi
if [ -n "$contrail-analytics-api__DEFAULTS__cassandra_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS cassandra_server_list $contrail-analytics-api__DEFAULTS__cassandra_server_list
fi
if [ -n "$contrail-analytics-api__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS http_server_port $contrail-analytics-api__DEFAULTS__http_server_port
fi
if [ -n "$contrail-analytics-api__DEFAULTS__rest_api_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS rest_api_port $contrail-analytics-api__DEFAULTS__rest_api_port
fi
if [ -n "$contrail-analytics-api__DEFAULTS__rest_api_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS rest_api_ip $contrail-analytics-api__DEFAULTS__rest_api_ip
fi
if [ -n "$contrail-analytics-api__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS log_local $contrail-analytics-api__DEFAULTS__log_local
fi
if [ -n "$contrail-analytics-api__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS log_level $contrail-analytics-api__DEFAULTS__log_level
fi
if [ -n "$contrail-analytics-api__DEFAULTS__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS log_category $contrail-analytics-api__DEFAULTS__log_category
fi
if [ -n "$contrail-analytics-api__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS log_file $contrail-analytics-api__DEFAULTS__log_file
fi
if [ -n "$contrail-analytics-api__DEFAULTS__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS sandesh_send_rate_limit $contrail-analytics-api__DEFAULTS__sandesh_send_rate_limit
fi
if [ -n "$contrail-analytics-api__DEFAULTS__partitions" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DEFAULTS partitions $contrail-analytics-api__DEFAULTS__partitions
fi
if [ -n "$contrail-analytics-api__DISCOVERY__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DISCOVERY disc_server_ip $contrail-analytics-api__DISCOVERY__disc_server_ip
fi
if [ -n "$contrail-analytics-api__DISCOVERY__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-analytics-api.conf DISCOVERY disc_server_port $contrail-analytics-api__DISCOVERY__disc_server_port
fi
