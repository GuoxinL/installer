#!/usr/bin/env bash

############################################################

#         name : Install OpenSips

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh

# 修改配置文件
function modify_opensips_config {
    addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
    config_file_path="/usr/local/etc/opensips/opensips.cfg"
    mv ${config_path} ${config_path}.bak
    while read line
    do
        result=$(echo $line | grep "CUSTOMIZE ME")
        if  [[ "$result" != "" ]] ; then
            echo ${OPENSIPS_CONFIG_IP_START}${addrs}${OPENSIPS_CONFIG_IP_END} >> $config_path
        else
            echo $line >> $config_path
        fi
    done < ${config_path}.bak
}

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证 opensips 是否运行
check_is_active ${file_name}
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
echo -e "$OPENSIPS_ENVIRONMENT_VARIABLE" >> /etc/profile
source /etc/profile

# 设置OpenSips 配置
echo -e "$OPENSIOS_CONFIG_MYSQL" > /usr/local/etc/opensips/opensipsctlrc

# 修改 opensips 配置文件
addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
modify_config "/usr/local/etc/opensips/opensips.cfg" "CUSTOMIZE" "${OPENSIPS_CONFIG_IP_START}${addrs}${OPENSIPS_CONFIG_IP_END}"

opensipsdbctl create

# 设置为服务
set_application_as_service ${file_name} "$OPENSIPS_SERVICE_CONF"

# 检查是否安装成功
check_is_active_over ${file_name}
