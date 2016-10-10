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

if [ _n "$contrail_alarm_gen__REDIS__redis_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf REDIS redis_server_port $contrail_alarm_gen__REDIS__redis_server_port
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__host_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS host_ip $contrail_alarm_gen__DEFAULTS__host_ip
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__collectors" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS collectors $contrail_alarm_gen__DEFAULTS__collectors
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS http_server_port $contrail_alarm_gen__DEFAULTS__http_server_port
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__log_local" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS log_local $contrail_alarm_gen__DEFAULTS__log_local
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__log_level" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS log_level $contrail_alarm_gen__DEFAULTS__log_level
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__log_category" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS log_category $contrail_alarm_gen__DEFAULTS__log_category
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__log_file" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS log_file $contrail_alarm_gen__DEFAULTS__log_file
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__kafka_broker_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS kafka_broker_list $contrail_alarm_gen__DEFAULTS__kafka_broker_list
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__partitions" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS partitions $contrail_alarm_gen__DEFAULTS__partitions
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__zk_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS zk_list $contrail_alarm_gen__DEFAULTS__zk_list
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__rabbitmq_server_list" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS rabbitmq_server_list $contrail_alarm_gen__DEFAULTS__rabbitmq_server_list
fi
if [ _n "$contrail_alarm_gen__DEFAULTS__rabbitmq_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DEFAULTS rabbitmq_port $contrail_alarm_gen__DEFAULTS__rabbitmq_port
fi
if [ _n "$contrail_alarm_gen__DISCOVERY__disc_server_ip" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DISCOVERY disc_server_ip $contrail_alarm_gen__DISCOVERY__disc_server_ip
fi
if [ _n "$contrail_alarm_gen__DISCOVERY__disc_server_port" ]; then
  ./openstack_config __set /etc/contrail/contrail_alarm_gen.conf DISCOVERY disc_server_port $contrail_alarm_gen__DISCOVERY__disc_server_port
fi
