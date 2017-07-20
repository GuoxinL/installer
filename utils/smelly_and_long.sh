#!/usr/bin/env bash

#
#
#
mongodb_config="processManagement:\n    fork: true\nnet:\n    bindIp: 0.0.0.0\n    port: 27117\nstorage:\n    dbPath: /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/db\nsystemLog:\n    destination: file\n    path: \"/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/log/mongod.log\"\n    logAppend: true\nstorage:\n    journal:\n        enabled: true\n$1security:\n    $1authorization: enabled"

#
#
#
mongodb_config_create_user_js="conn=new Mongo('localhost:27117')db = conn.getDB('admin')db.createUser({    user: 'admin',    pwd: 'admin',    roles: [ { role: 'userAdminAnyDatabase', db: 'admin' } ]})db = conn.getDB('birdnest')db.createUser({    user: 'yjh',    pwd: 'yjh123456790',    roles: [ { role: 'readWrite', db: 'birdnest' } ]})"

#
#
#
mongodb_application_conf="[Unit]\nDescription=MongoDB Service\nAfter=network.target\n\n[Service]\nType=forking\nExecStart=/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/bin/mongod --config /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/conf/mongod.conf\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#
#
neo4j_config="dbms.connector.bolt.tls_level=OPTIONAL\ndbms.connector.bolt.listen_address=0.0.0.0:7687\ndbms.connector.http.listen_address=0.0.0.0:7474\ndbms.connector.https.listen_address=0.0.0.0:7473"

#
#
#
neo4j_application_conf="[Unit]\nDescription=Neo4j Service\nAfter=network.target\\n[Service]\nType=forking\nExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\nExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\nExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

