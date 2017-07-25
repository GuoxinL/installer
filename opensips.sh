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

# 设置环境变量
echo -e "$opensips_environment_variable" >> /etc/profile
source /etc/profile
# 设置OpenSips 配置
echo -e "$opensios_config_mysql" > /usr/local/etc/opensips/opensipsctlrc

addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
config_path="/usr/local/etc/opensips/opensips.cfg"
mv ${config_path} ${config_path}.bak
while read line
do
    result=$(echo $line | grep "${opensips_config_ip_end}")
    if  [[ "$result" == "" ]] ; then
        echo "result"$result
        echo "line"$line
        echo ${opensips_config_ip_start}${addrs}${opensips_config_ip_end} >> $config_path
    else
        echo "result"$result
        echo "line"$line
    fi
done < ${config_path}.bak

## 设置为服务
#set_application_as_service opensips "$opensips_service_conf"
#
## 检查是否安装成功
#check_is_active_over opensips
