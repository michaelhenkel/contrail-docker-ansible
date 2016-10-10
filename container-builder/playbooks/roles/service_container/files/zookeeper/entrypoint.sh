#!/bin/bash

if [ -n "$zookeeper__server_list" ]; then
    IFS=',' read -ra NODE <<< "$zookeeper__server_list"
    ZOOKEEPER_SERVER_LIST=""
    COUNTER=1
    for i in "${NODE[@]}";do
        if [ `grep server${COUNTER}=$i /etc/zookeeper/conf/zoo.cfg` ]; then
          sed -i "/server.${COUNTER}/d" /etc/zookeeper/conf/zoo.cfg
        fi
        echo server.${COUNTER}=$i >> /etc/zookeeper/conf/zoo.cfg
        COUNTER=`expr $COUNTER + 1`
    done
fi

if [ -n "$zk_listen_address_string" ]; then
  sed -r -i "s/(zookeeper.connect)=(.*)/\1=$zk_listen_address_string/g" $KAFKA_HOME/config/server.properties
fi
echo `expr $my_zk_id + 1` > /var/lib/zookeeper/myid
echo broker.id=$my_zk_id >> $KAFKA_HOME/config/server.properties

exec "$@"
