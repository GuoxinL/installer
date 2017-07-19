#!/usr/bin/env bash

############################################################

#         name : Install Neo4j

#         author : liugx@bjnangle.com

############################################################


source ./depend/verification-system.sh

#    $0：是脚本本身的名字；
#    $n: 方法参数传参
#    $#：是传给脚本的参数个数；
#    $@：是传给脚本的所有参数的列表，即被扩展为"$1" "$2" "$3"等；
#    $*：是以一个单字符串显示所有向脚本传递的参数，与位置变量不同，参数可超过9个，即被扩展成"$1c$2c$3"，其中c是IFS的第一个字符；
#    $$：是脚本运行的当前进程ID号；
#    $?：是显示最后命令的退出状态，0表示没有错误，其他表示有错误；

# check neo4j-community-3.2.1-unix.tar.gz exists
function check_package {
    file_exists=`find . -name ${neo4j_path}`

    if [[ -e $file_exists ]]; then
        echo "File already exist, You don't need to download it"
    else
        if [[ ! -e $package_path ]]; then
           mkdir package
        fi
        echo "Downloading..."
        wget https://neo4j.com/artifact.php?name=neo4j-community-3.2.1-unix.tar.gz -O ${final_path}
        echo $?
        if [ 0 -eq $? ]; then
            echo "Download successfully!"
        else
            echo "Download faiil!"
        fi
    fi
}

# Set Neo4j as a service
function set_neo4j_as_service {
    # > 覆盖
    # >> 追加
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
}
package_path="./package/"
neo4j_path="neo4j-community-3.2.1-unix.tar.gz"
final_path=${package_path}${neo4j_path}

check_package

tar -xf ${final_path} -C /soft/

set_neo4j_as_service

is_active=`systemctl is-active opensips.service`
if [[ $is_active != active ]]; then
    echo "Neo4j install failure, Please use 'systemctl status neo4j.service'"
else
    echo "Neo4j install success"
fi
