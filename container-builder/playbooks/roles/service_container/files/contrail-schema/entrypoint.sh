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

if [ -n "$contrail_schema__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS log_file $contrail_schema__DEFAULTS__log_file
fi
if [ -n "$contrail_schema__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS log_local $contrail_schema__DEFAULTS__log_local
fi
if [ -n "$contrail_schema__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS log_level $contrail_schema__DEFAULTS__log_level
fi
if [ -n "$contrail_schema__DEFAULTS__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS disc_server_ip $contrail_schema__DEFAULTS__disc_server_ip
fi
if [ -n "$contrail_schema__DEFAULTS__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS disc_server_port $contrail_schema__DEFAULTS__disc_server_port
fi
if [ -n "$contrail_schema__DEFAULTS__rabbit_server" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS rabbit_server $contrail_schema__DEFAULTS__rabbit_server
fi
if [ -n "$contrail_schema__DEFAULTS__ifmap_username" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS ifmap_username $contrail_schema__DEFAULTS__ifmap_username
fi
if [ -n "$contrail_schema__DEFAULTS__ifmap_password" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS ifmap_password $contrail_schema__DEFAULTS__ifmap_password
fi
if [ -n "$contrail_schema__DEFAULTS__zk_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS zk_server_ip $contrail_schema__DEFAULTS__zk_server_ip
fi
if [ -n "$contrail_schema__DEFAULTS__cassandra_server_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_schema__DEFAULTS__cassandra_server_list"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "$CASSANDRA_SERVER_LIST" ]; then
            CASSANDRA_SERVER_LIST=`echo $i`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-schema.conf DEFAULTS cassandra_server_list "$CASSANDRA_SERVER_LIST"
fi

exec "$@"
