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

if [[ $1 -eq "" ]]; then
    echo -e "Please enter domain name for the first parameter name \n eg: baidu.com"
    exit 2
fi
# 定义安装包相关信息
package_distory="./package/"
package_file="nginx-1.13.1.tar.gz"
package_url="http://nginx.org/download/nginx-1.13.1.tar.gz"

apt-get install -y libtool libpcre3 libpcre3-dev libpcre3 libpcre3-dev zlib1g-dev openssl build-essential

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/
cd /soft/${package_file%%.tar.gz*}/

./configure
make
make install

mv conf/nginx.conf conf/nginx.conf.bak
echo -e "$NGINX_CONFIG" > /soft/${package_file%%.tar.gz*}/conf/nginx.conf

modify_config "/soft/${package_file%%.tar.gz*}/conf/nginx.conf" "DOMAIN_NAME" "$1"

# 设置为服务
set_application_as_service ${file_name} "$NGINX_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over ${file_name}
