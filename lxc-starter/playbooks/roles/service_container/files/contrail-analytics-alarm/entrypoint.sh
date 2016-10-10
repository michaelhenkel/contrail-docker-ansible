
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

if [ -n "$contrail-alarm-gen__REDIS__redis_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf REDIS redis_server_port $contrail-alarm-gen__REDIS__redis_server_port
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__host_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS host_ip $contrail-alarm-gen__DEFAULTS__host_ip
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__collectors" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS collectors $contrail-alarm-gen__DEFAULTS__collectors
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__http_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS http_server_port $contrail-alarm-gen__DEFAULTS__http_server_port
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__log_local" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_local $contrail-alarm-gen__DEFAULTS__log_local
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__log_level" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_level $contrail-alarm-gen__DEFAULTS__log_level
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__log_category" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_category $contrail-alarm-gen__DEFAULTS__log_category
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__log_file" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS log_file $contrail-alarm-gen__DEFAULTS__log_file
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__kafka_broker_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS kafka_broker_list $contrail-alarm-gen__DEFAULTS__kafka_broker_list
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__partitions" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS partitions $contrail-alarm-gen__DEFAULTS__partitions
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__zk_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS zk_list $contrail-alarm-gen__DEFAULTS__zk_list
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__rabbitmq_server_list" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS rabbitmq_server_list $contrail-alarm-gen__DEFAULTS__rabbitmq_server_list
fi
if [ -n "$contrail-alarm-gen__DEFAULTS__rabbitmq_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DEFAULTS rabbitmq_port $contrail-alarm-gen__DEFAULTS__rabbitmq_port
fi
if [ -n "$contrail-alarm-gen__DISCOVERY__disc_server_ip" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DISCOVERY disc_server_ip $contrail-alarm-gen__DISCOVERY__disc_server_ip
fi
if [ -n "$contrail-alarm-gen__DISCOVERY__disc_server_port" ]; then
  ./openstack-config --set /etc/contrail/contrail-alarm-gen.conf DISCOVERY disc_server_port $contrail-alarm-gen__DISCOVERY__disc_server_port
fi
