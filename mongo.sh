#!/usr/bin/env bash

sys_version = `cat /etc/issue`

if cat /etc/issue | grep "Ubuntu 16.04.2 LTS" == ""; then
    echo "Use Ubuntu 16.04.2 LTS to run this Shell Script!"
#    退出码（exit status，或exit code）的约定：
#    0表示成功（Zero - Success）
#    非0表示失败（Non-Zero  - Failure）
#    2表示用法不当（Incorrect Usage）
#    127表示命令没有找到（Command Not Found）
#    126表示不是可执行的（Not an executable）
#    >=128 信号产生
    exit 2
fi

#${varible##*string} 从左向右截取最后一个string后的字符串
#${varible#*string}从左向右截取第一个string后的字符串
#${varible%%string*}从右向左截取最后一个string后的字符串
#${varible%string*}从右向左截取第一个string后的字符串
#“*”只是一个通配符可以不要


package_path = "./package"
mongo_path = "/mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"
${varible%%.*}
final_path = ${package_path}${target_path}
# check neo4j-community-3.2.1-unix.tar.gz exists
if find . -name "mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz" == ""; then
    wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz -O ${final_path}
fi

tar -xf ${final_path} -C /soft/

mkdir /soft${target_path}/conf
mkdir /soft${target_path}/db
mkdir /soft${target_path}/log

echo -e "processManagement:\n
   fork: true\n
net:\n
   bindIp: 0.0.0.0\n
   port: 27117\n
storage:\n
   dbPath: /soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/db\n
systemLog:\n
   destination: file\n
   path: \"/soft/mongodb-linux-x86_64-ubuntu1604-3.4.4/log/mongod.log\"\n
   logAppend: true\n
storage:\n
   journal:\n
      enabled: true\n
#security:\n
#   authorization: enabled" > /soft${target_path}/conf/mongod.conf

echo -e "[Unit]\n
Description=Neo4j Service\n
After=network.target\n
\n
[Service]\n
Type=forking\n
ExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\n
ExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\n
ExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\n
RestartSec=10\n
\n
[Install]\n
WantedBy=multi-user.target" > /etc/systemd/system/neo4j.service
systemctl daemon-reload
systemctl enable neo4j.service
systemctl start neo4j.service

if systemctl is-active opensips.service != "active"; then
    echo "Neo4j install failure, Please use 'systemctl status neo4j.service'"
fi
echo "Neo4j install success"