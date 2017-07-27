#!/usr/bin/env bash

############################################################

#         name : Install Neo4j

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh
#    $0：是脚本本身的名字；
#    $n: 方法参数传参
#    $#：是传给脚本的参数个数；
#    $@：是传给脚本的所有参数的列表，即被扩展为"$1" "$2" "$3"等；
#    $*：是以一个单字符串显示所有向脚本传递的参数，与位置变量不同，参数可超过9个，即被扩展成"$1c$2c$3"，其中c是IFS的第一个字符；
#    $$：是脚本运行的当前进程ID号；
#    $?：是显示最后命令的退出状态，0表示没有错误，其他表示有错误；

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证 neo4j 是否运行
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

# 修改配置文件
echo -e $NEO4J_CONFIG >> /soft/${package_file%-*}/conf/neo4j.conf

# 设置为服务
set_application_as_service ${file_name} "$NEO4J_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over {file_name}

sleep 3
echo "set neo4j password."

# 这个命令在shell 不好使，不知道为啥，可能水土不服
# curl -X "POST" "http://127.0.0.1:7474/user/neo4j/password" \
#     -H "Content-Type: application/json" \
#     -u neo4j:neo4j \
#     -d $'{"password": "111111"}'
# 用这个命令替代 需要安装
apt install httpie -y

result=`http -a neo4j:neo4j POST http://127.0.0.1:7474/user/neo4j/password password=111111`
if [[ $(echo $line | grep "HTTP/1.1 200 OK") != null ]] ; then
    echo "Modify password success"
else
    echo "Modify password fail"
fi