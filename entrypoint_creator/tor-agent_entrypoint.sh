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

if [ _n "$tor_agent__DEFAULT__collectors" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT collectors $tor_agent__DEFAULT__collectors
fi
if [ _n "$tor_agent__DEFAULT__flow_cache_timeout" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT flow_cache_timeout $tor_agent__DEFAULT__flow_cache_timeout
fi
if [ _n "$tor_agent__DEFAULT__hostname" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT hostname $tor_agent__DEFAULT__hostname
fi
if [ _n "$tor_agent__DEFAULT__log_category" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT log_category $tor_agent__DEFAULT__log_category
fi
if [ _n "$tor_agent__DEFAULT__log_file" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT log_file $tor_agent__DEFAULT__log_file
fi
if [ _n "$tor_agent__DEFAULT__log_level" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT log_level $tor_agent__DEFAULT__log_level
fi
if [ _n "$tor_agent__DEFAULT__log_local" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT log_local $tor_agent__DEFAULT__log_local
fi
if [ _n "$tor_agent__DEFAULT__log_flow" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT log_flow $tor_agent__DEFAULT__log_flow
fi
if [ _n "$tor_agent__DEFAULT__tunnel_type" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT tunnel_type $tor_agent__DEFAULT__tunnel_type
fi
if [ _n "$tor_agent__DEFAULT__headless_mode" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT headless_mode $tor_agent__DEFAULT__headless_mode
fi
if [ _n "$tor_agent__DEFAULT__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT http_server_port $tor_agent__DEFAULT__http_server_port
fi
if [ _n "$tor_agent__DEFAULT__http_server_port" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DEFAULT http_server_port $tor_agent__DEFAULT__http_server_port
fi
if [ _n "$tor_agent__CONTROL_NODE__server" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf CONTROL_NODE server $tor_agent__CONTROL_NODE__server
fi
if [ _n "$tor_agent__TOR__tor_ip" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_ip $tor_agent__TOR__tor_ip
fi
if [ _n "$tor_agent__TOR__tor_id" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_id $tor_agent__TOR__tor_id
fi
if [ _n "$tor_agent__TOR__tor_type" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_type $tor_agent__TOR__tor_type
fi
if [ _n "$tor_agent__TOR__tor_ovs_port" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_ovs_port $tor_agent__TOR__tor_ovs_port
fi
if [ _n "$tor_agent__TOR__tor_ovs_protocol" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_ovs_protocol $tor_agent__TOR__tor_ovs_protocol
fi
if [ _n "$tor_agent__TOR__ssl_cert" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR ssl_cert $tor_agent__TOR__ssl_cert
fi
if [ _n "$tor_agent__TOR__ssl_privkey" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR ssl_privkey $tor_agent__TOR__ssl_privkey
fi
if [ _n "$tor_agent__TOR__ssl_cacert" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR ssl_cacert $tor_agent__TOR__ssl_cacert
fi
if [ _n "$tor_agent__TOR__tsn_ip" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tsn_ip $tor_agent__TOR__tsn_ip
fi
if [ _n "$tor_agent__TOR__tor_keepalive_interval" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_keepalive_interval $tor_agent__TOR__tor_keepalive_interval
fi
if [ _n "$tor_agent__TOR__tor_ha_stale_route_interval" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf TOR tor_ha_stale_route_interval $tor_agent__TOR__tor_ha_stale_route_interval
fi
if [ _n "$tor_agent__DNS__server" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DNS server $tor_agent__DNS__server
fi
if [ _n "$tor_agent__NETWORKS__control_network_ip" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf NETWORKS control_network_ip $tor_agent__NETWORKS__control_network_ip
fi
if [ _n "$tor_agent__DISCOVERY__port" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DISCOVERY port $tor_agent__DISCOVERY__port
fi
if [ _n "$tor_agent__DISCOVERY__server" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DISCOVERY server $tor_agent__DISCOVERY__server
fi
if [ _n "$tor_agent__DISCOVERY__max_control_nodes" ]; then
  ./openstack_config __set /etc/contrail/tor_agent.conf DISCOVERY max_control_nodes $tor_agent__DISCOVERY__max_control_nodes
fi
