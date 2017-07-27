#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证是否安装Java8
version_info=`java -version`
version_eq='java version "1.8.0'
result=$(echo $version_info | grep "${version_eq}")
if  [[ "$result" != "" ]] ; then
    echo "Java Runtime exists ${version_eq}\""
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
