#!/usr/bin/env bash

sys_version=`cat /etc/issue`

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

#package_path="./package/"
#neo4j_path="neo4j-community-3.2.1-unix.tar.gz"
#final_path=${package_path}${neo4j_path}
## check neo4j-community-3.2.1-unix.tar.gz exists
#if find . -name ${neo4j_path} == ""; then
#    wget https://neo4j.com/artifact.php?name=neo4j-community-3.2.1-unix.tar.gz -O ${final_path}
#fi
#
#tar -xf ${final_path} -C /soft/
#
## > 覆盖
## >> 追加
#echo -e "[Unit]\n
#Description=Neo4j Service\n
#After=network.target\n
#\n
#[Service]\n
#Type=forking\n
#ExecStart=/soft/neo4j-community-3.2.1/bin/neo4j start\n
#ExecReload=/soft/neo4j-community-3.2.1/bin/neo4j restart\n
#ExecStop=/soft/neo4j-community-3.2.1/bin/neo4j stop\n
#RestartSec=10\n
#\n
#[Install]\n
#WantedBy=multi-user.target" > /etc/systemd/system/neo4j.service
#
#systemctl daemon-reload
#systemctl enable neo4j.service
#systemctl start neo4j.service
#
#if systemctl is-active opensips.service != "active"; then
#    echo "Neo4j install failure, Please use 'systemctl status neo4j.service'"
#fi
#echo "Neo4j install success"