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

if [ _n "$contrail_collector__DEFAULT__analytics_data_ttl" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT analytics_data_ttl $contrail_collector__DEFAULT__analytics_data_ttl
fi
if [ _n "$contrail_collector__DEFAULT__analytics_config_audit_ttl" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT analytics_config_audit_ttl $contrail_collector__DEFAULT__analytics_config_audit_ttl
fi
if [ _n "$contrail_collector__DEFAULT__analytics_statistics_ttl" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT analytics_statistics_ttl $contrail_collector__DEFAULT__analytics_statistics_ttl
fi
if [ _n "$contrail_collector__DEFAULT__analytics_flow_ttl" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT analytics_flow_ttl $contrail_collector__DEFAULT__analytics_flow_ttl
fi
if [ _n "$contrail_collector__DEFAULT__cassandra_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT cassandra_server_list $contrail_collector__DEFAULT__cassandra_server_list
fi
if [ _n "$contrail_collector__DEFAULT__kafka_broker_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT kafka_broker_list $contrail_collector__DEFAULT__kafka_broker_list
fi
if [ _n "$contrail_collector__DEFAULT__partitions" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT partitions $contrail_collector__DEFAULT__partitions
fi
if [ _n "$contrail_collector__DEFAULT__hostip" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT hostip $contrail_collector__DEFAULT__hostip
fi
if [ _n "$contrail_collector__DEFAULT__hostname" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT hostname $contrail_collector__DEFAULT__hostname
fi
if [ _n "$contrail_collector__DEFAULT__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT http_server_port $contrail_collector__DEFAULT__http_server_port
fi
if [ _n "$contrail_collector__DEFAULT__log_category" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_category $contrail_collector__DEFAULT__log_category
fi
if [ _n "$contrail_collector__DEFAULT__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_file $contrail_collector__DEFAULT__log_file
fi
if [ _n "$contrail_collector__DEFAULT__log_files_count" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_files_count $contrail_collector__DEFAULT__log_files_count
fi
if [ _n "$contrail_collector__DEFAULT__log_file_size" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_file_size $contrail_collector__DEFAULT__log_file_size
fi
if [ _n "$contrail_collector__DEFAULT__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_level $contrail_collector__DEFAULT__log_level
fi
if [ _n "$contrail_collector__DEFAULT__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT log_local $contrail_collector__DEFAULT__log_local
fi
if [ _n "$contrail_collector__DEFAULT__syslog_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT syslog_port $contrail_collector__DEFAULT__syslog_port
fi
if [ _n "$contrail_collector__DEFAULT__sflow_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT sflow_port $contrail_collector__DEFAULT__sflow_port
fi
if [ _n "$contrail_collector__DEFAULT__ipfix_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT ipfix_port $contrail_collector__DEFAULT__ipfix_port
fi
if [ _n "$contrail_collector__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DEFAULT sandesh_send_rate_limit $contrail_collector__DEFAULT__sandesh_send_rate_limit
fi
if [ _n "$contrail_collector__REDIS__port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf REDIS port $contrail_collector__REDIS__port
fi
if [ _n "$contrail_collector__REDIS__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf REDIS server $contrail_collector__REDIS__server
fi
if [ _n "$contrail_collector__COLLECTOR__port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf COLLECTOR port $contrail_collector__COLLECTOR__port
fi
if [ _n "$contrail_collector__COLLECTOR__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf COLLECTOR server $contrail_collector__COLLECTOR__server
fi
if [ _n "$contrail_collector__COLLECTOR__protobuf_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf COLLECTOR protobuf_port $contrail_collector__COLLECTOR__protobuf_port
fi
if [ _n "$contrail_collector__DISCOVERY__port" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DISCOVERY port $contrail_collector__DISCOVERY__port
fi
if [ _n "$contrail_collector__DISCOVERY__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DISCOVERY server $contrail_collector__DISCOVERY__server
fi
if [ _n "$contrail_collector__DISCOVERY__server" ]; then
  ./openstack_config __set /etc/contrail/contrail_collector.conf DISCOVERY server $contrail_collector__DISCOVERY__server
fi
