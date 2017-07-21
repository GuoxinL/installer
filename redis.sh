#!/usr/bin/env bash

############################################################

#         name : Install Redis

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh

# 验证系统
check_system

# 验证 redis 是否运行
check_is_active redis
if  [ $? -eq 0 ] ; then
    echo "redis runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="redis-3.2.9.tar.gz"
package_url="wget http://download.redis.io/releases/redis-3.2.9.tar.gz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/
cd /soft/${package_file%%.tar.gz*}/
make
make install
# 修改配置文件
echo -e $redis_config >> /soft/${package_file%%.tar.gz*}/redis.conf

# 设置为服务
set_application_as_service redis "$redis_service_conf"

# 检查是否安装成功
check_is_active_over redis
