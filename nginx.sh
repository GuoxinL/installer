#!/usr/bin/env bash

############################################################

#         name : Install Nginx

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

# 验证 nginx 是否运行
check_is_active ${file_name}
if  [ $? -eq 0 ] ; then
    echo "nginx runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="nginx-1.13.1.tar.gz"
package_url="http://nginx.org/download/nginx-1.13.1.tar.gz"

apt-get install libtool libpcre3 libpcre3-dev libpcre3 libpcre3-dev build-essential libtool zlib1g-dev openssl install build-essential -y

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/
cd /soft/${package_file%%.tar.gz*}/
./configure
make
make install

# 修改配置文件
modify_config "/soft/${package_file%%.tar.gz*}/nginx.conf" "requirepass" "requirepass 111111"

# 设置为服务
set_application_as_service ${file_name} "$NGINX_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over ${file_name}
