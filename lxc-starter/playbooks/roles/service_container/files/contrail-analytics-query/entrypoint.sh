
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

if [ -n "$contrail-query-engine__DEFAULT__analytics_data_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT analytics_data_ttl $contrail-query-engine__DEFAULT__analytics_data_ttl
fi
if [ -n "$contrail-query-engine__DEFAULT__cassandra_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT cassandra_server_list $contrail-query-engine__DEFAULT__cassandra_server_list
fi
if [ -n "$contrail-query-engine__DEFAULT__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT collectors $contrail-query-engine__DEFAULT__collectors
fi
if [ -n "$contrail-query-engine__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT hostip $contrail-query-engine__DEFAULT__hostip
fi
if [ -n "$contrail-query-engine__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT hostname $contrail-query-engine__DEFAULT__hostname
fi
if [ -n "$contrail-query-engine__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT http_server_port $contrail-query-engine__DEFAULT__http_server_port
fi
if [ -n "$contrail-query-engine__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_category $contrail-query-engine__DEFAULT__log_category
fi
if [ -n "$contrail-query-engine__DEFAULT__log_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_disable $contrail-query-engine__DEFAULT__log_disable
fi
if [ -n "$contrail-query-engine__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_file $contrail-query-engine__DEFAULT__log_file
fi
if [ -n "$contrail-query-engine__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_files_count $contrail-query-engine__DEFAULT__log_files_count
fi
if [ -n "$contrail-query-engine__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_file_size $contrail-query-engine__DEFAULT__log_file_size
fi
if [ -n "$contrail-query-engine__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_level $contrail-query-engine__DEFAULT__log_level
fi
if [ -n "$contrail-query-engine__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_local $contrail-query-engine__DEFAULT__log_local
fi
if [ -n "$contrail-query-engine__DEFAULT__max_slice" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT max_slice $contrail-query-engine__DEFAULT__max_slice
fi
if [ -n "$contrail-query-engine__DEFAULT__max_tasks" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT max_tasks $contrail-query-engine__DEFAULT__max_tasks
fi
if [ -n "$contrail-query-engine__DEFAULT__start_time" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT start_time $contrail-query-engine__DEFAULT__start_time
fi
if [ -n "$contrail-query-engine__DEFAULT__test_mode" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT test_mode $contrail-query-engine__DEFAULT__test_mode
fi
if [ -n "$contrail-query-engine__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT sandesh_send_rate_limit $contrail-query-engine__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail-query-engine__REDIS__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf REDIS port $contrail-query-engine__REDIS__port
fi
if [ -n "$contrail-query-engine__REDIS__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf REDIS server $contrail-query-engine__REDIS__server
fi
if [ -n "$contrail-query-engine__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DISCOVERY port $contrail-query-engine__DISCOVERY__port
fi
if [ -n "$contrail-query-engine__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DISCOVERY server $contrail-query-engine__DISCOVERY__server
fi
