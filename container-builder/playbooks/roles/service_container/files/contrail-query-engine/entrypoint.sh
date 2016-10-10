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

if [ -n "$contrail_query_engine__DEFAULT__analytics_data_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT analytics_data_ttl $contrail_query_engine__DEFAULT__analytics_data_ttl
fi
if [ -n "$contrail_query_engine__DEFAULT__cassandra_server_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_query_engine__DEFAULT__cassandra_server_list"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "CASSANDRA_SERVER_LIST" ]; then
            CASSANDRA_SERVER_LIST=`echo $i`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT cassandra_server_list "$CASSANDRA_SERVER_LIST"
fi
if [ -n "$contrail_query_engine__DEFAULT__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT collectors $contrail_query_engine__DEFAULT__collectors
fi
if [ -n "$contrail_query_engine__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT hostip $contrail_query_engine__DEFAULT__hostip
fi
if [ -n "$contrail_query_engine__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT hostname $contrail_query_engine__DEFAULT__hostname
fi
if [ -n "$contrail_query_engine__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT http_server_port $contrail_query_engine__DEFAULT__http_server_port
fi
if [ -n "$contrail_query_engine__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_category $contrail_query_engine__DEFAULT__log_category
fi
if [ -n "$contrail_query_engine__DEFAULT__log_disable" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_disable $contrail_query_engine__DEFAULT__log_disable
fi
if [ -n "$contrail_query_engine__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_file $contrail_query_engine__DEFAULT__log_file
fi
if [ -n "$contrail_query_engine__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_files_count $contrail_query_engine__DEFAULT__log_files_count
fi
if [ -n "$contrail_query_engine__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_file_size $contrail_query_engine__DEFAULT__log_file_size
fi
if [ -n "$contrail_query_engine__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_level $contrail_query_engine__DEFAULT__log_level
fi
if [ -n "$contrail_query_engine__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT log_local $contrail_query_engine__DEFAULT__log_local
fi
if [ -n "$contrail_query_engine__DEFAULT__max_slice" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT max_slice $contrail_query_engine__DEFAULT__max_slice
fi
if [ -n "$contrail_query_engine__DEFAULT__max_tasks" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT max_tasks $contrail_query_engine__DEFAULT__max_tasks
fi
if [ -n "$contrail_query_engine__DEFAULT__start_time" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT start_time $contrail_query_engine__DEFAULT__start_time
fi
if [ -n "$contrail_query_engine__DEFAULT__test_mode" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT test_mode $contrail_query_engine__DEFAULT__test_mode
fi
if [ -n "$contrail_query_engine__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DEFAULT sandesh_send_rate_limit $contrail_query_engine__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail_query_engine__REDIS__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf REDIS port $contrail_query_engine__REDIS__port
fi
if [ -n "$contrail_query_engine__REDIS__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf REDIS server $contrail_query_engine__REDIS__server
fi
if [ -n "$contrail_query_engine__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DISCOVERY port $contrail_query_engine__DISCOVERY__port
fi
if [ -n "$contrail_query_engine__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-query-engine.conf DISCOVERY server $contrail_query_engine__DISCOVERY__server
fi

exec "$@"
