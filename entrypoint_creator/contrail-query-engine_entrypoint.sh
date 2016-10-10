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

if [ _n "$contrail_query_engine__DEFAULT__analytics_data_ttl" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT analytics_data_ttl $contrail_query_engine__DEFAULT__analytics_data_ttl
fi
if [ _n "$contrail_query_engine__DEFAULT__cassandra_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT cassandra_server_list $contrail_query_engine__DEFAULT__cassandra_server_list
fi
if [ _n "$contrail_query_engine__DEFAULT__collectors" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT collectors $contrail_query_engine__DEFAULT__collectors
fi
if [ _n "$contrail_query_engine__DEFAULT__hostip" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT hostip $contrail_query_engine__DEFAULT__hostip
fi
if [ _n "$contrail_query_engine__DEFAULT__hostname" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT hostname $contrail_query_engine__DEFAULT__hostname
fi
if [ _n "$contrail_query_engine__DEFAULT__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT http_server_port $contrail_query_engine__DEFAULT__http_server_port
fi
if [ _n "$contrail_query_engine__DEFAULT__log_category" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_category $contrail_query_engine__DEFAULT__log_category
fi
if [ _n "$contrail_query_engine__DEFAULT__log_disable" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_disable $contrail_query_engine__DEFAULT__log_disable
fi
if [ _n "$contrail_query_engine__DEFAULT__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_file $contrail_query_engine__DEFAULT__log_file
fi
if [ _n "$contrail_query_engine__DEFAULT__log_files_count" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_files_count $contrail_query_engine__DEFAULT__log_files_count
fi
if [ _n "$contrail_query_engine__DEFAULT__log_file_size" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_file_size $contrail_query_engine__DEFAULT__log_file_size
fi
if [ _n "$contrail_query_engine__DEFAULT__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_level $contrail_query_engine__DEFAULT__log_level
fi
if [ _n "$contrail_query_engine__DEFAULT__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT log_local $contrail_query_engine__DEFAULT__log_local
fi
if [ _n "$contrail_query_engine__DEFAULT__max_slice" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT max_slice $contrail_query_engine__DEFAULT__max_slice
fi
if [ _n "$contrail_query_engine__DEFAULT__max_tasks" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT max_tasks $contrail_query_engine__DEFAULT__max_tasks
fi
if [ _n "$contrail_query_engine__DEFAULT__start_time" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT start_time $contrail_query_engine__DEFAULT__start_time
fi
if [ _n "$contrail_query_engine__DEFAULT__test_mode" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT test_mode $contrail_query_engine__DEFAULT__test_mode
fi
if [ _n "$contrail_query_engine__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DEFAULT sandesh_send_rate_limit $contrail_query_engine__DEFAULT__sandesh_send_rate_limit
fi
if [ _n "$contrail_query_engine__REDIS__port" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf REDIS port $contrail_query_engine__REDIS__port
fi
if [ _n "$contrail_query_engine__REDIS__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf REDIS server $contrail_query_engine__REDIS__server
fi
if [ _n "$contrail_query_engine__DISCOVERY__port" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DISCOVERY port $contrail_query_engine__DISCOVERY__port
fi
if [ _n "$contrail_query_engine__DISCOVERY__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_query_engine.conf DISCOVERY server $contrail_query_engine__DISCOVERY__server
fi
