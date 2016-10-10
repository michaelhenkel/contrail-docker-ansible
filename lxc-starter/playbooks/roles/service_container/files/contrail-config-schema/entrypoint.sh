#!/bin/bash
touch /etc/contrail/contrail-keystone-auth.conf

./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS multi_tenancy $MULTI_TENANCY
./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS auth keystone
./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS listen_ip_addr 0.0.0.0
./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS listen_port 8082
./openstack-config --set /etc/contrail/vnc_api_lib.ini auth AUTHN_SERVER $KEYSTONE_SERVER


if [ -n "$KEYSTONE_SERVER" ]; then
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_host $KEYSTONE_SERVER
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_protocol http
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE auth_port 35357
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_user $ADMIN_USER
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_password $ADMIN_PASSWORD
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_token $ADMIN_TOKEN
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE admin_tenant_name $ADMIN_TENANT
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE insecure false
  ./openstack-config --set /etc/contrail/contrail-keystone-auth.conf KEYSTONE memcache_servers $MEMCACHED_SERVER:11211
fi

if [ -n "$CASSANDRA_SERVER" ]; then
    IFS=',' read -ra NODE <<< "$CASSANDRA_SERVER"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z $CASSANDRA_SERVER_LIST ]; then
            CASSANDRA_SERVER_LIST=`echo $i:9160`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST,$i:9160`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS cassandra_server_list $CASSANDRA_SERVER_LIST
fi

if [ -n "$DISCOVERY_SERVER" ]; then
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS disc_server_ip $DISCOVERY_SERVER
fi

if [ -n "$RABBIT_SERVER" ]; then
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS rabbit_server $RABBIT_SERVER
fi

if [ -n "$REDIS_SERVER" ]; then
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS redis_server_ip $REDIS_SERVER
fi

if [ -n "$IFMAP_SERVER" ]; then
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS ifmap_password schema-transformer
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS ifmap_username schema-transformer
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS ifmap_server_ip $IFMAP_SERVER
fi

if [ -n "$ZOOKEEPER_SERVER" ]; then
    IFS=',' read -ra NODE <<< "$ZOOKEEPER_SERVER"
    ZOOKEEPER_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z $ZOOKEEPER_SERVER_LIST ]; then
            ZOOKEEPER_SERVER_LIST=`echo $i:2181`
        else
            ZOOKEEPER_SERVER_LIST=`echo $ZOOKEEPER_SERVER_LIST $i:2181`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS zk_server_ip $ZOOKEEPER_SERVER_LIST
fi

exec "$@"
