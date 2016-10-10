#!/usr/bin/python
import glob
import os
ALL_VARS=[]
for file in glob.glob('*.conf'):
        service_name = file.split(".")[0]
        section_dict={}
        option_array=[]
        file_array=[]
        f=open(file, 'r')
        for line in f:
                if line != '\n':
                        if line.find('=') != -1 or line.find(']') != -1:# or not line.find('='):
                                file_array.append(line)
        current_section=''
        for element in file_array:
                if element.find(']') != -1:
                        element = element[element.find('[') + 1: element.find(']')]
                        section_dict[element]=[]
                        current_section = element
                if element.find('=') != -1:
                        element = element.rsplit('=', 1)[0]
                        element = element[element.find('#') + 1:]
                        element = element.strip()
                        section_dict[current_section].append(element)

        if not os.path.exists('/root/contrail-docker-ansible/container-builder/playbooks/roles/service_container/files/' + service_name):
            os.makedirs('/root/contrail-docker-ansible/container-builder/playbooks/roles/service_container/files/' + service_name)
        entrypoint = open('/root/contrail-docker-ansible/container-builder/playbooks/roles/service_container/files/' + service_name + '/entrypoint.sh', 'w+')
        entrypoint_string = """#!/bin/bash
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
fi\n
"""
        for section in section_dict:
                for option in section_dict[section]:
                        entrypoint_string += 'if [ -n \"$' + service_name.replace('-','_') + '__' + section.replace('-','_') + '__' + option.replace('-','_') + '\" ]; then\n'
                        entrypoint_string += '  ./openstack-config --set /etc/contrail/' + file + ' ' + section + ' ' + option + ' $' + service_name.replace('-','_') + '__' + section.replace('-','_') + '__' + option.replace('-','_') + '\n'
                        entrypoint_string += 'fi\n'
                        ALL_VARS.append((service_name + '__' + section + '__' + option).replace('-','_'))
        entrypoint_string += entrypoint_string + '\nexec "$@"'
        #entrypoint_string = entrypoint_string.replace('-','_')
        #entrypoint.write('entrypoints/' + entrypoint_string)
        entrypoint.write(entrypoint_string)
        
all_vars_file = open('all_vars.txt','w+')
for item in ALL_VARS:
	all_vars_file.write("%s\n" % item)
