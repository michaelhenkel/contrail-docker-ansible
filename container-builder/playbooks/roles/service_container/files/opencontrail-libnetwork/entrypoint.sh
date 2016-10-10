#!/bin/bash
cat << EOF > /opencontrail-docker-libnetwork/opencontrail.conf
---
keystone_server: $KEYSTONE_SERVER
api_server: $contrail_api_server
api_port: '8082'
admin_user: $ADMIN_USER
admin_password: $ADMIN_PASSWORD
admin_tenant: $ADMIN_TENANT
socketpath: /run/docker/plugins
scope: global
DEBUG: true
EOF

exec "$@"
