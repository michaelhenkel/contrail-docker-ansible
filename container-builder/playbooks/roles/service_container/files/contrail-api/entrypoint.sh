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

if [ -n "$contrail_api__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS log_file $contrail_api__DEFAULTS__log_file
fi
if [ -n "$contrail_api__DEFAULTS__listen_ip_addr" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS log_file $contrail_api__DEFAULTS__log_file
fi
if [ -n "$contrail_api__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS log_level $contrail_api__DEFAULTS__log_level
fi
if [ -n "$contrail_api__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS log_local $contrail_api__DEFAULTS__log_local
fi
if [ -n "$contrail_api__DEFAULTS__ifmap_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS ifmap_server_ip $contrail_api__DEFAULTS__ifmap_server_ip
fi
if [ -n "$contrail_api__DEFAULTS__ifmap_username" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS ifmap_username $contrail_api__DEFAULTS__ifmap_username
fi
if [ -n "$contrail_api__DEFAULTS__ifmap_password" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS ifmap_password $contrail_api__DEFAULTS__ifmap_password
fi

if [ -n "$contrail_api__DEFAULTS__cassandra_server_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_api__DEFAULTS__cassandra_server_list"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "$CASSANDRA_SERVER_LIST" ]; then
            CASSANDRA_SERVER_LIST=`echo $i`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS cassandra_server_list "$CASSANDRA_SERVER_LIST"
fi

if [ -n "$contrail_api__DEFAULTS__zookeeper_server_list" ]; then
    ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS zk_server_ip "$contrail_api__DEFAULTS__zookeeper_server_list"
fi
if [ -n "$contrail_api__DEFAULTS__rabbit_server" ]; then
    ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS rabbit_server "$contrail_api__DEFAULTS__rabbit_server"
fi

if [ -n "$contrail_api__DEFAULTS__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS disc_server_ip $contrail_api__DEFAULTS__disc_server_ip
fi
if [ -n "$contrail_api__DEFAULTS__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS disc_server_port $contrail_api__DEFAULTS__disc_server_port
fi
if [ -n "$contrail_api__DEFAULTS__default_encoding" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS default_encoding $contrail_api__DEFAULTS__default_encoding
fi
if [ -n "$contrail_api__DEFAULTS__default_encoding" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS default_encoding $contrail_api__DEFAULTS__default_encoding
fi
if [ -n "$contrail_api__DEFAULTS__default_encoding" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS default_encoding $contrail_api__DEFAULTS__default_encoding
fi
if [ -n "$contrail_api__DEFAULTS__list_optimization_enabled" ]; then
  ./openstack-config --set /etc/contrail/contrail-api.conf DEFAULTS list_optimization_enabled $contrail_api__DEFAULTS__list_optimization_enabled
fi

echo "/usr/sbin/contrail-provision-config --host_name `hostname` --host_ip $myip --api_server_ip $contrail__controller_vip --api_server_port 8082 --oper add" > /register_config.sh
chmod +x /register_config.sh

exec "$@"
