#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : liugx@bjnangle.com

############################################################

source utils/utils.sh
source utils/service-utils.sh

#${varible##*string} 从左向右截取最后一个string后的字符串
#${varible#*string}从左向右截取第一个string后的字符串
#${varible%%string*}从右向左截取最后一个string后的字符串
#${varible%string*}从右向左截取第一个string后的字符串
#“*”只是一个通配符可以不要

function create_mongod_config {
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
    $1security:\n
    $1   authorization: enabled" > /soft/$2/conf/mongod.conf
}

function create_mongo_user_conf_js {
    echo -e "
    use admin
    db.createUser({
        user: \"admin\",
        pwd: \"admin\",
        roles: [ { role: \"userAdminAnyDatabase\", db: \"admin\" } ]
    })
    use birdnest
    db.createUser({
        user: \"yjh\",
        pwd: \"yjh123456790\",
        roles: [ { role: \"readWrite\", db: \"birdnest\" } ]
    })" > /tmp/create_user.js
}
# Application Config
application_conf="[Unit]\n
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
    WantedBy=multi-user.target"

# 验证系统
check_system

# 验证 mongod 是否运行
check_is_active mongod
if  [ $? -eq 0 ] ; then
    echo "Mongod runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"
package_url="https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_file}${package_distory} -C /soft/

# 配置mongo
mkdir /soft/${package_distory%%.*}/conf
mkdir /soft/${package_distory%%.*}/db
mkdir /soft/${package_distory%%.*}/log

# 创建mongo配置文件
create_mongod_config "#" ${package_distory%%.*}

# 设置为服务
set_application_as_service mongod ${application_conf}

# 检查运行状态
check_is_active_over mongod
if  [ $? -eq 1 ] ; then
    exit 1
fi
#导入配置文件
/soft/${package_distory%%.*}/bin/mongo localhost:27117 /tmp/create_user.js

create_mongod_config "" ${package_distory%%.*}

systemctl restart mongod.service

# 检查运行状态
check_is_active_over mongod
if  [ $? -eq 1 ] ; then
    exit 1
fi

/soft/${package_distory%%.*}/bin/mongo localhost:27117/birdnest -u yjh -p yjh123456790

if [[ $? -eq 0 ]]; then
    echo "Mongo login success."
else
    echo "[Error]Mongo login fail, Configuration file import fail or configuration error"
fi

# 检查是否安装成功
check_is_active_over mongod
