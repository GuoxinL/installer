#!/usr/bin/env bash

source ../utils/service-utils.sh
source ../utils/smelly_and_long.sh
package_file="mongodb-linux-x86_64-ubuntu1604-3.4.4.tar.gz"
echo ${package_file%%.tar.gz*}

echo ${package_file%-*}

varible2="12345${varible%%.*}67890qwertyuiopasdfghjklzxcvbnm"
echo $varible2


application_conf="[Unit]\nDescription=Apollo Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/lib/birdnest/bin/apollo-broker run\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target\n"

echo -e $application_conf

function string_paramter {
    echo '----------------------'
    echo $1
    echo $2
    echo '------------------------'
}
param="#"
string_paramter $param "#"

# 验证权限
check_permission


file_name=`get_file_name`

echo ${file_name}
echo -e $APOLLO_SERVICE_CONF