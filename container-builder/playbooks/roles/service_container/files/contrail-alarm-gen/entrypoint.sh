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

if [ -n "$contrail_alarm_gen__REDIS__redis_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf REDIS redis_server_port $contrail_alarm_gen__REDIS__redis_server_port
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__host_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS host_ip $contrail_alarm_gen__DEFAULTS__host_ip
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS collectors $contrail_alarm_gen__DEFAULTS__collectors
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS http_server_port $contrail_alarm_gen__DEFAULTS__http_server_port
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_local $contrail_alarm_gen__DEFAULTS__log_local
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_level $contrail_alarm_gen__DEFAULTS__log_level
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_category $contrail_alarm_gen__DEFAULTS__log_category
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_file $contrail_alarm_gen__DEFAULTS__log_file
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__kafka_broker_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_alarm_gen__DEFAULTS__kafka_broker_list"
    KAFKA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "KAFKA_SERVER_LIST" ]; then
            KAFKA_SERVER_LIST=`echo $i`
        else
            KAFKA_SERVER_LIST=`echo $KAFKA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS kafka_broker_list "$KAFKA_SERVER_LIST"
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__zk_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_alarm_gen__DEFAULTS__zk_list"
    ZOOKEEPER_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "ZOOKEEPER_SERVER_LIST" ]; then
            ZOOKEEPER_SERVER_LIST=`echo $i`
        else
            ZOOKEEPER_SERVER_LIST=`echo $ZOOKEEPER_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS zk_list "$ZOOKEEPER_SERVER_LIST"
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__partitions" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS partitions $contrail_alarm_gen__DEFAULTS__partitions
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__rabbitmq_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS rabbitmq_server_list $contrail_alarm_gen__DEFAULTS__rabbitmq_server_list
fi
if [ -n "$contrail_alarm_gen__DEFAULTS__rabbitmq_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS rabbitmq_port $contrail_alarm_gen__DEFAULTS__rabbitmq_port
fi
if [ -n "$contrail_alarm_gen__DISCOVERY__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DISCOVERY disc_server_ip $contrail_alarm_gen__DISCOVERY__disc_server_ip
fi
if [ -n "$contrail_alarm_gen__DISCOVERY__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DISCOVERY disc_server_port $contrail_alarm_gen__DISCOVERY__disc_server_port
fi

exec "$@"
