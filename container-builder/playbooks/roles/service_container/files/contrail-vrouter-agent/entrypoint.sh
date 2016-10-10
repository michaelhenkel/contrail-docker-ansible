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

#!/bin/bash

if [ -n "$vrouter__CONTROL_NODE_server" ]; then
    ./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf CONTROL-NODE server $vrouter__CONTROL_NODE_server
fi
if [ -n "$vrouter__DEFAULT_collectors" ]; then
    ./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf DEFAULT collectors $vrouter__DEFAULT_collectors
fi
if [ -n "$vrouter__DISCOVERY_server" ]; then
    ./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf DISCOVERY server $vrouter__DISCOVERY_server 
fi
if [ -n "$vrouter__DNS_server" ]; then
    ./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf DNS server $vrouter__DNS_server
fi
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf NETWORKS control_network_ip $vrouter__vrouter__NETWORKS_control_network_ip
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf VIRTUAL-HOST-INTERFACE name vhost0
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf VIRTUAL-HOST-INTERFACE ip $vrouter__vrouter__NETWORKS_control_network_ip/$cidr
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf VIRTUAL-HOST-INTERFACE gateway $vrouter__VIRTUAL_HOST_INTERFACE_gateway
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf VIRTUAL-HOST-INTERFACE physical_interface $vrouter__VIRTUAL_HOST_INTERFACE_physical_interface
./openstack-config --set /etc/contrail/contrail-vrouter-agent.conf VIRTUAL-HOST-INTERFACE compute_node_address $vrouter__vrouter__NETWORKS_control_network_ip

ls /lib/modules/`uname -r`/extra/net/vrouter/vrouter.ko
if [ $? -ne 0 ]; then
  cd /usr/src/modules/contrail-vrouter
  tar zxvf contrail-vrouter-*.tar.gz
  grep "Red Hat Enterprise Linux Server release 7.1" /etc/redhat-release
  if [ $? -eq 0 ]; then
      cd /usr/bin
      rm gcc g++ cpp
      ln -s gcc-4.9 gcc
      ln -s g++-4.9 g++
      ln -s cpp-4.9 cpp
      cd /usr/src/modules/contrail-vrouter
      make
      mkdir -p /lib/modules/`uname -r`/extra/net/vrouter
      cp -r /usr/src/modules/contrail-vrouter/vrouter.ko /lib/modules/`uname -r`/extra/net/vrouter
      depmod -a
      lsmod |grep vrouter 
      if [ $? -eq 0 ]; then
        rmmod vrouter
      fi
      #modprobe vrouter
  else
      lsb_release -a |grep Ubuntu
      if [ $? -eq 0 ]; then
          ls /usr/src/linux-headers-`uname -r`
          if [ $? -ne 0 ]; then
             apt-get install -y linux-headers-`uname -r`
          fi
          cd /usr/src/modules/contrail-vrouter
          make
          mkdir -p /lib/modules/`uname -r`/extra/net/vrouter
          cp -r /usr/src/modules/contrail-vrouter/vrouter.ko /lib/modules/`uname -r`/extra/net/vrouter
          depmod -a
          lsmod |grep vrouter
          if [ $? -eq 0 ]; then
            rmmod vrouter
          fi
          #modprobe vrouter
     fi
  fi
fi

cat << EOF > /etc/contrail/agent_param
LOG=/var/log/contrail.log
CONFIG=/etc/contrail/agent.conf
prog=/usr/bin/contrail-vrouter-agent
kmod=vrouter
pname=contrail-vrouter-agent
LIBDIR=/usr/lib64
VHOST_CFG=/etc/network/interfaces
DEVICE=vhost0
dev=$vrouter__VIRTUAL_HOST_INTERFACE_physical_interface
vgw_subnet_ip=
vgw_int=
LOGFILE=--log-file=/var/log/contrail/vrouter.log
EOF
#cp /lib/modules/3.19.0-25-generic/updates/dkms/vrouter.ko /

source /etc/contrail/agent_param

function pkt_setup () {
    for f in /sys/class/net/$1/queues/rx-*
    do
        q="$(echo $f | cut -d '-' -f2)"
        r=$(($q%32))
        s=$(($q/32))
        ((mask=1<<$r))
        str=(`printf "%x" $mask`)
        if [ $s -gt 0 ]; then
            for ((i=0; i < $s; i++))
            do
                str+=,00000000
            done
        fi
        echo $str > $f/rps_cpus
    done
    ifconfig $1 up
}

function insert_vrouter() {
    if cat $CONFIG | grep '^\s*platform\s*=\s*dpdk\b' &>/dev/null; then
        vrouter_dpdk_start
        return $?
    fi

    grep $kmod /proc/modules 1>/dev/null 2>&1
    if [ $? != 0 ]; then
        modprobe $kmod
        #insmod /vrouter.ko
        if [ $? != 0 ]
        then
            echo "$(date) : Error inserting vrouter module"
            return 1
        fi

        if [ -f /sys/class/net/pkt1/queues/rx-0/rps_cpus ]; then
            pkt_setup pkt1
        fi
        if [ -f /sys/class/net/pkt2/queues/rx-0/rps_cpus ]; then
            pkt_setup pkt2
        fi
        if [ -f /sys/class/net/pkt3/queues/rx-0/rps_cpus ]; then
            pkt_setup pkt3
        fi
    fi

    # check if vhost0 is not present, then create vhost0 and $dev
    if [ ! -L /sys/class/net/vhost0 ]; then
        echo "$(date): Creating vhost interface: $DEVICE."
        # for bonding interfaces
        loops=0
        while [ ! -f /sys/class/net/$dev/address ]
        do
            sleep 1
            loops=$(($loops + 1))
            if [ $loops -ge 60 ]; then
                echo "Unable to look at /sys/class/net/$dev/address"
                return 1
            fi
        done

        DEV_MAC=$(cat /sys/class/net/$dev/address)
        vif --create $DEVICE --mac $DEV_MAC
        if [ $? != 0 ]; then
            echo "$(date): Error creating interface: $DEVICE"
        fi


        echo "$(date): Adding $dev to vrouter"
        DEV_MAC=$(cat /sys/class/net/$dev/address)
        vif --add $dev --mac $DEV_MAC --vrf 0 --vhost-phys --type physical
        if [ $? != 0 ]; then
            echo "$(date): Error adding $dev to vrouter"
        fi

        vif --add $DEVICE --mac $DEV_MAC --vrf 0 --type vhost --xconnect $dev
        if [ $? != 0 ]; then
            echo "$(date): Error adding $DEVICE to vrouter"
        fi
    fi
    return 0
}
insert_vrouter
ip address delete $vrouter__NETWORKS_control_network_ip/$cidr dev $vrouter__VIRTUAL_HOST_INTERFACE_physical_interface
ip address add $vrouter__NETWORKS_control_network_ip/$cidr dev vhost0
ip link set dev vhost0 up
ip route add default via $vrouter__VIRTUAL_HOST_INTERFACE_gateway
hname=`hostname`
/usr/share/contrail-utils/provision_vrouter.py --host_name $hname --host_ip $vrouter__NETWORKS_control_network_ip --api_server_ip $vrouter__DISCOVERY_server --api_server_port 8082 --oper add

exec "$@"
