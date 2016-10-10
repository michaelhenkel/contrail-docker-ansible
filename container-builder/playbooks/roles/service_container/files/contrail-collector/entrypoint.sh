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

if [ -n "$contrail_collector__DEFAULT__analytics_data_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT analytics_data_ttl $contrail_collector__DEFAULT__analytics_data_ttl
fi
if [ -n "$contrail_collector__DEFAULT__analytics_config_audit_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT analytics_config_audit_ttl $contrail_collector__DEFAULT__analytics_config_audit_ttl
fi
if [ -n "$contrail_collector__DEFAULT__analytics_statistics_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT analytics_statistics_ttl $contrail_collector__DEFAULT__analytics_statistics_ttl
fi
if [ -n "$contrail_collector__DEFAULT__analytics_flow_ttl" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT analytics_flow_ttl $contrail_collector__DEFAULT__analytics_flow_ttl
fi
if [ -n "$contrail_collector__DEFAULT__cassandra_server_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_collector__DEFAULT__cassandra_server_list"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "CASSANDRA_SERVER_LIST" ]; then
            CASSANDRA_SERVER_LIST=`echo $i`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT cassandra_server_list "$CASSANDRA_SERVER_LIST"
fi
if [ -n "$contrail_collector__DEFAULT__kafka_broker_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_collector__DEFAULT__kafka_broker_list"
    KAFKA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "KAFKA_SERVER_LIST" ]; then
            KAFKA_SERVER_LIST=`echo $i`
        else
            KAFKA_SERVER_LIST=`echo $KAFKA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT kafka_broker_list "$KAFKA_SERVER_LIST"
fi
if [ -n "$contrail_collector__DEFAULT__zookeeper_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT zookeeper_server_list $contrail_collector__DEFAULT__zookeeper_server_list
fi
if [ -n "$contrail_collector__DEFAULT__partitions" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT partitions $contrail_collector__DEFAULT__partitions
fi
if [ -n "$contrail_collector__DEFAULT__hostip" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT hostip $contrail_collector__DEFAULT__hostip
fi
if [ -n "$contrail_collector__DEFAULT__hostname" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT hostname $contrail_collector__DEFAULT__hostname
fi
if [ -n "$contrail_collector__DEFAULT__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT http_server_port $contrail_collector__DEFAULT__http_server_port
fi
if [ -n "$contrail_collector__DEFAULT__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_category $contrail_collector__DEFAULT__log_category
fi
if [ -n "$contrail_collector__DEFAULT__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_file $contrail_collector__DEFAULT__log_file
fi
if [ -n "$contrail_collector__DEFAULT__log_files_count" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_files_count $contrail_collector__DEFAULT__log_files_count
fi
if [ -n "$contrail_collector__DEFAULT__log_file_size" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_file_size $contrail_collector__DEFAULT__log_file_size
fi
if [ -n "$contrail_collector__DEFAULT__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_level $contrail_collector__DEFAULT__log_level
fi
if [ -n "$contrail_collector__DEFAULT__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT log_local $contrail_collector__DEFAULT__log_local
fi
if [ -n "$contrail_collector__DEFAULT__syslog_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT syslog_port $contrail_collector__DEFAULT__syslog_port
fi
if [ -n "$contrail_collector__DEFAULT__sflow_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT sflow_port $contrail_collector__DEFAULT__sflow_port
fi
if [ -n "$contrail_collector__DEFAULT__ipfix_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT ipfix_port $contrail_collector__DEFAULT__ipfix_port
fi
if [ -n "$contrail_collector__DEFAULT__sandesh_send_rate_limit" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DEFAULT sandesh_send_rate_limit $contrail_collector__DEFAULT__sandesh_send_rate_limit
fi
if [ -n "$contrail_collector__REDIS__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf REDIS port $contrail_collector__REDIS__port
fi
if [ -n "$contrail_collector__REDIS__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf REDIS server $contrail_collector__REDIS__server
fi
if [ -n "$contrail_collector__COLLECTOR__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf COLLECTOR port $contrail_collector__COLLECTOR__port
fi
if [ -n "$contrail_collector__COLLECTOR__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf COLLECTOR server $contrail_collector__COLLECTOR__server
fi
if [ -n "$contrail_collector__COLLECTOR__protobuf_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf COLLECTOR protobuf_port $contrail_collector__COLLECTOR__protobuf_port
fi
if [ -n "$contrail_collector__DISCOVERY__port" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DISCOVERY port $contrail_collector__DISCOVERY__port
fi
if [ -n "$contrail_collector__DISCOVERY__server" ]; then
  ./openstack-config --set /etc/contrail/contrail-collector.conf DISCOVERY server $contrail_collector__DISCOVERY__server
fi

exec "$@"
