#!/usr/bin/env bash

############################################################

#         name : Install OpenSips

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh

# 验证系统
check_system

# 验证 opensips 是否运行
check_is_active opensips
if  [ $? -eq 0 ] ; then
    echo "opensips runing, don't need install"
    exit 0
fi

# 安装相关依赖
apt-get install perl bison flex zlib1g-dev libxml2-dev libxslt1-dev libncurses5-dev -y
# 安装mysql
debconf-set-selections <<< 'mysql-server-5.7 mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server-5.7 mysql-server/root_password_again password root'
apt-get install mysql-server-5.7 mysql-client-5.7 libmysqlclient-dev -y

# 定义安装包相关信息
package_distory="./package/"
package_file="opensips-2.3.0.tar.gz"
package_url="http://opensips.org/pub/opensips/2.3.0/opensips-2.3.0.tar.gz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/

# 编译
cd /soft/${package_file%%.tar.gz*}/
make all include_modules="db_mysql"
make include_modules="db_mysql" prefix="/usr/local" install

## 设置为服务
#set_application_as_service opensips "$opensips_service_conf"
#
## 检查是否安装成功
#check_is_active_over opensips
