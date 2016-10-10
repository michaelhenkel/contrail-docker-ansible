#!/bin/bash

if [ -n "$IFMAP_USER" ]; then
    IFS=',' read -ra NODE <<< "$IFMAP_USER"
    for i in "${NODE[@]}";do
        echo $i.control:$i.control >> /etc/ifmap-server/basicauthusers.properties
        echo $i.dns:$i.dns >> /etc/ifmap-server/basicauthusers.properties
        echo $i.svc_monitor:$i.svc_monitor >> /etc/ifmap-server/basicauthusers.properties
        echo $i.api:$i.api >> /etc/ifmap-server/basicauthusers.properties
        echo $i.schema:$i.schema >> /etc/ifmap-server/basicauthusers.properties
    done
fi

exec "$@"
