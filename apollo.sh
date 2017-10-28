#!/usr/bin/env bash

############################################################

#         name : Install Apollo

#         author : lgx31@sina.cn

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证 apollo 是否运行
check_is_active ${file_name}
if  [ $? -eq 0 ] ; then
    echo "${file_name} runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="apache-apollo-1.7.1-unix-distro.tar.gz"
package_url="http://mirrors.tuna.tsinghua.edu.cn/apache/activemq/activemq-apollo/1.7.1/apache-apollo-1.7.1-unix-distro.tar.gz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/

# create borker
cd /var/lib/
/soft/apache-apollo-1.7.1/bin/apollo create birdnest

# 设置为服务
set_application_as_service ${file_name} "$APOLLO_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over ${file_name}
