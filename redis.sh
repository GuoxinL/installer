#!/usr/bin/env bash

############################################################

#         name : Install Redis

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证 redis 是否运行
check_is_active ${file_name}
if  [ $? -eq 0 ] ; then
    echo "redis runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="redis-3.2.9.tar.gz"
package_url="http://download.redis.io/releases/redis-3.2.9.tar.gz"

apt install -y make gcc g++

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/
cd /soft/${package_file%%.tar.gz*}/
make MALLOC=libc
make install

# 修改配置文件
modify_config "/soft/${package_file%%.tar.gz*}/redis.conf" "# requirepass foobared" "requirepass 111111"

# 设置为服务
set_application_as_service ${file_name} "$REDIS_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over ${file_name}
