#!/usr/bin/env bash

package_file="mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"
echo ${package_file%%.*}

echo ${package_file%-*}

varible2="12345${varible%%.*}67890qwertyuiopasdfghjklzxcvbnm"
echo $varible2

source utils/utils.sh

check_system

application_conf="[Unit]\nDescription=Neo4j Service\nAfter=network.target\n\n[Service]\nType=forking\nExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\nExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\nExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

echo -e $application_conf