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

if [ -n "$contrail_discovery__DNS_SERVER__policy" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DNS-SERVER policy $contrail_discovery__DNS_SERVER__policy
fi
if [ -n "$contrail_discovery__DEFAULTS__listen_ip_addr" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS listen_ip_addr $contrail_discovery__DEFAULTS__listen_ip_addr
fi
if [ -n "$contrail_discovery__DEFAULTS__listen_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS listen_port $contrail_discovery__DEFAULTS__listen_port
fi
if [ -n "$contrail_discovery__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS log_local $contrail_discovery__DEFAULTS__log_local
fi
if [ -n "$contrail_discovery__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS log_file $contrail_discovery__DEFAULTS__log_file
fi
if [ -n "$contrail_discovery__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS log_level $contrail_discovery__DEFAULTS__log_level
fi
if [ -n "$contrail_discovery__DEFAULTS__cassandra_server_list" ]; then
    IFS=',' read -ra NODE <<< "$contrail_discovery__DEFAULTS__cassandra_server_list"
    CASSANDRA_SERVER_LIST=""
    for i in "${NODE[@]}";do
        if [ -z "$CASSANDRA_SERVER_LIST" ]; then
            CASSANDRA_SERVER_LIST=`echo $i`
        else
            CASSANDRA_SERVER_LIST=`echo $CASSANDRA_SERVER_LIST $i`
        fi
    done
    ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS cassandra_server_list "$CASSANDRA_SERVER_LIST"
fi
if [ -n "$contrail_discovery__DEFAULTS__cass_max_retries" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS cass_max_retries $contrail_discovery__DEFAULTS__cass_max_retries
fi
if [ -n "$contrail_discovery__DEFAULTS__cass_timeout" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS cass_timeout $contrail_discovery__DEFAULTS__cass_timeout
fi
if [ -n "$contrail_discovery__DEFAULTS__ttl_min" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS ttl_min $contrail_discovery__DEFAULTS__ttl_min
fi
if [ -n "$contrail_discovery__DEFAULTS__ttl_max" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS ttl_max $contrail_discovery__DEFAULTS__ttl_max
fi
if [ -n "$contrail_discovery__DEFAULTS__hc_interval" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS hc_interval $contrail_discovery__DEFAULTS__hc_interval
fi
if [ -n "$contrail_discovery__DEFAULTS__hc_max_miss" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS hc_max_miss $contrail_discovery__DEFAULTS__hc_max_miss
fi
if [ -n "$contrail_discovery__DEFAULTS__ttl_short" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS ttl_short $contrail_discovery__DEFAULTS__ttl_short
fi
if [ -n "$contrail_discovery__DEFAULTS__ttl_short" ]; then
  ./openstack-config --set /etc/contrail/contrail-discovery.conf DEFAULTS ttl_short $contrail_discovery__DEFAULTS__ttl_short
fi

exec "$@"
