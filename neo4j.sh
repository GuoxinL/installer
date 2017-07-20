#!/usr/bin/env bash

############################################################

#         name : Install Neo4j

#         author : liugx@bjnangle.com

############################################################

source utils/utils.sh
source utils/service-utils.sh

#    $0：是脚本本身的名字；
#    $n: 方法参数传参
#    $#：是传给脚本的参数个数；
#    $@：是传给脚本的所有参数的列表，即被扩展为"$1" "$2" "$3"等；
#    $*：是以一个单字符串显示所有向脚本传递的参数，与位置变量不同，参数可超过9个，即被扩展成"$1c$2c$3"，其中c是IFS的第一个字符；
#    $$：是脚本运行的当前进程ID号；
#    $?：是显示最后命令的退出状态，0表示没有错误，其他表示有错误；


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

# 验证neo4j是否运行
check_is_active neo4j
if  [ $? -eq 0 ] ; then
    echo "neo4j runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="neo4j-community-3.2.1-unix.tar.gz"
package_url="https://neo4j.com/artifact.php?name=neo4j-community-3.2.1-unix.tar.gz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/

# 设置为服务
set_application_as_service neo4j "$application_conf"

# 检查是否安装成功
exit `check_is_active_over neo4j`
