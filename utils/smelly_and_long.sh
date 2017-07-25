#!/usr/bin/env bash

############################################################

#         name : Smelly and long

#         author : liugx@bjnangle.com

############################################################

#
#   MongoDB Configuration
#
MONGODB_CONFIG="processManagement:\n    fork: true\nnet:\n    bindIp: 0.0.0.0\n    port: 27117\nstorage:\n    dbPath: /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/db\n    journal: \n        enabled: true\nsystemLog:\n    destination: file\n    path: \"/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/log/mongod.log\"\n    logAppend: true\n"
MONGODB_CONFIG_APPEND="security:\n    authorization: enabled"

#
#   MongoDB create user admin script
#
MONGODB_CONFIG_CREATE_USER_ADMIN="conn = new Mongo('localhost:27117')\ndb = conn.getDB('admin')\ndb.createUser({\n    user: 'admin',\n    pwd: 'admin',\n    roles : [ 'root' ]\n})"

#
#   MongoDB create user birdnest script
#
MONGODB_CONFIG_CREATE_USER_BIRDNEST="conn = new Mongo('localhost:27117')\ndb = conn.getDB('birdnest')\ndb.createUser({\n    user: 'yjh',\n    pwd: 'yjh123456790',\n    roles : [ 'readWrite' ]\n})"

#
#   MongoDB check user login script
#
MONGODB_CHECK_USER_BIRDNEST_LOGIN="conn = new Mongo('localhost:27117')\ndb = conn.getDB('birdnest')\ndb.auth('yjh','yjh123456790')"

#
#   MongoDB Service config
#
MONGODB_SERVICE_CONF="[Unit]\nDescription=MongoDB Service\nAfter=network.target\n\n[Service]\nType=forking\nExecStart=/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/bin/mongod --config /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/conf/mongod.conf\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Neo4j Configuration
#
NEO4J_CONFIG="dbms.connector.bolt.tls_level=OPTIONAL\ndbms.connector.bolt.listen_address=0.0.0.0:7687\ndbms.connector.http.listen_address=0.0.0.0:7474\ndbms.connector.https.listen_address=0.0.0.0:7473"

#
#   Neo4j Service config
#
NEO4J_SERVICE_CONF="[Unit]\nDescription=Neo4j Service\nAfter=network.target\n[Service]\nType=forking\nExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\nExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\nExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Redis Configuration
#
REDIS_CONFIG="requirepass 111111"

#
#   Redis Service config
#
REDIS_SERVICE_CONF="[Unit]\nDescription=Redis Service\nAfter=network.target\n\n[Service]\n#Type=forking\nExecStart=/usr/local/bin/redis-server /soft/redis-3.2.9/redis.conf\nExecStop=/usr/local/bin/redis-cli shutdown\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"

#
#   Apollo Service config
#
APOLLO_SERVICE_CONF="[Unit]\nDescription=Apollo Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/lib/birdnest/bin/apollo-broker run\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target\n"

#
#   OpenSips Config Mysql
#
OPENSIOS_CONFIG_MYSQL="SIP_DOMAIN=opensips.org\nDBENGINE=MYSQL\nDBHOST=localhost\nDBNAME=opensips\nDBRWUSER=opensipsDBRWPW=\"opensipsrw\"\nDBROOTUSER=\"root\"\nUSERCOL=\"username\"\n"

#
#   OpenSips  Environment Variable
#
OPENSIPS_ENVIRONMENT_VARIABLE="export OPENSIPS=/usr/local/sbin/\nexport PATH=$PATH:$OPENSIPS"

#
#   OpenSips Config IP
#   想使用 printf 格式化输出命令，但是变量提到了单独的文件中所以没有使用
#
OPENSIPS_CONFIG_IP_START="listen=udp:"
OPENSIPS_CONFIG_IP_END=":5060   # CUSTOMIZE ME"

#
#   OpenSips Service config
#
OPENSIPS_SERVICE_CONF="[Unit]\nDescription=OpenSIPS Service\nAfter=network.target\n\n[Service]\nType=forking\nExecStart=/usr/local/sbin/opensipsctl start\nExecReload=/usr/local/sbin/opensipsctl restart\nExecStop=/usr/local/sbin/opensipsctl stop\nRestartSec=10\n\n[Install]\nWantedBy=multi-user.target"
